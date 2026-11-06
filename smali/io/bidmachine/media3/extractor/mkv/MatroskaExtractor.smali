###### Class io.bidmachine.media3.extractor.mkv.MatroskaExtractor (io.bidmachine.media3.extractor.mkv.MatroskaExtractor)
.class public Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SSA_DIALOGUE_FORMAT:[B

.field public static final SSA_PREFIX:[B

.field public static final SUBRIP_PREFIX:[B

.field public static final TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VTT_PREFIX:[B

.field public static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field public blockAdditionalId:I

.field public blockDurationUs:J

.field public blockFlags:I

.field public blockGroupDiscardPaddingNs:J

.field public blockHasReferenceBlock:Z

.field public blockSampleCount:I

.field public blockSampleIndex:I

.field public blockSampleSizes:[I

.field public blockState:I

.field public blockTimeUs:J

.field public blockTrackNumber:I

.field public blockTrackNumberLength:I

.field public clusterTimecodeUs:J

.field public cueClusterPositions:Lio/bidmachine/media3/common/util/LongArray;

.field public cueTimesUs:Lio/bidmachine/media3/common/util/LongArray;

.field public cuesContentPosition:J

.field public currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

.field public durationTimecode:J

.field public durationUs:J

.field public final encryptionInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final encryptionSubsampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public haveOutputSample:Z

.field public isWebm:Z

.field public final nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final parseSubtitlesDuringExtraction:Z

.field public final reader:Lio/bidmachine/media3/extractor/mkv/EbmlReader;

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleEncodingHandled:Z

.field public sampleInitializationVectorRead:Z

.field public samplePartitionCount:I

.field public samplePartitionCountRead:Z

.field public sampleSignalByte:B

.field public sampleSignalByteRead:Z

.field public final sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public seekEntryId:I

.field public final seekEntryIdBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public seekEntryPosition:J

.field public seekForCues:Z

.field public final seekForCuesEnabled:Z

.field public seekPositionAfterBuildingCues:J

.field public seenClusterPositionForCurrentCuePoint:Z

.field public segmentContentPosition:J

.field public segmentContentSize:J

.field public sentSeekMap:Z

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public final subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public timecodeScale:J

.field public final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field public final varintReader:Lio/bidmachine/media3/extractor/mkv/VarintReader;

.field public final vorbisNumPageSamples:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public static synthetic $r8$lambda$nduLwn9WT2z6xT9Fy1FFDiSV7pE()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 128
    new-instance v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    sget-object v1, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 126
    new-instance v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    const/16 v0, 0x20

    .line 314
    new-array v1, v0, [B

    fill-array-data v1, :array_70

    sput-object v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    .line 333
    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 334
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 349
    new-array v0, v0, [B

    fill-array-data v0, :array_84

    sput-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    const/16 v0, 0x26

    .line 378
    new-array v0, v0, [B

    fill-array-data v0, :array_98

    sput-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    .line 406
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-void

    :array_70
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_84
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_98
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/mkv/EbmlReader;ILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V
    .registers 8

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 441
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 442
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 443
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 444
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 459
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 460
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 461
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 539
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->reader:Lio/bidmachine/media3/extractor/mkv/EbmlReader;

    .line 540
    new-instance v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/mkv/EbmlReader;->init(Lio/bidmachine/media3/extractor/mkv/EbmlProcessor;)V

    .line 541
    iput-object p3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_2d

    move p1, v0

    goto :goto_2e

    :cond_2d
    move p1, p3

    .line 542
    :goto_2e
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_35

    move p3, v0

    .line 543
    :cond_35
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->parseSubtitlesDuringExtraction:Z

    .line 544
    new-instance p1, Lio/bidmachine/media3/extractor/mkv/VarintReader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->varintReader:Lio/bidmachine/media3/extractor/mkv/VarintReader;

    .line 545
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 546
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 547
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-direct {p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 548
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 549
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    sget-object p3, Lio/bidmachine/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 550
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 551
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 552
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 553
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 554
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 555
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 556
    new-array p1, v0, [I

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V
    .registers 4

    .line 534
    new-instance v0, Lio/bidmachine/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;-><init>(Lio/bidmachine/media3/extractor/mkv/EbmlReader;ILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    return-void
.end method

.method public static synthetic access$500()[B
    .registers 1

    .line 84
    sget-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method public static synthetic access$600()Ljava/util/Map;
    .registers 1

    .line 84
    sget-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->TRACK_NAME_TO_ROTATION_DEGREES:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$700()Ljava/util/UUID;
    .registers 1

    .line 84
    sget-object v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private assertInitialized()V
    .registers 2

    .line 2021
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static ensureArrayCapacity([II)[I
    .registers 3

    if-nez p0, :cond_5

    .line 2010
    new-array p0, p1, [I

    return-object p0

    .line 2011
    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    .line 2015
    :cond_9
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static formatSubtitleTimecode(JLjava/lang/String;J)[B
    .registers 12

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1830
    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    const-wide v0, 0xd693a400L

    .line 1832
    div-long v2, p0, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    const-wide/32 v0, 0x3938700

    .line 1834
    div-long v3, p0, v0

    long-to-int v3, v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0xf4240

    .line 1836
    div-long v4, p0, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    .line 1838
    div-long/2addr p0, p3

    long-to-int p0, p0

    .line 1839
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1841
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p4, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1840
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static isCodecSupported(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1964
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1ca

    goto/16 :goto_1c4

    :sswitch_f
    const-string v3, "A_OPUS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_1c4

    :cond_19
    const/16 v2, 0x20

    goto/16 :goto_1c4

    :sswitch_1d
    const-string v3, "A_FLAC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_1c4

    :cond_27
    const/16 v2, 0x1f

    goto/16 :goto_1c4

    :sswitch_2b
    const-string v3, "A_EAC3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_1c4

    :cond_35
    const/16 v2, 0x1e

    goto/16 :goto_1c4

    :sswitch_39
    const-string v3, "V_MPEG2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_1c4

    :cond_43
    const/16 v2, 0x1d

    goto/16 :goto_1c4

    :sswitch_47
    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_1c4

    :cond_51
    const/16 v2, 0x1c

    goto/16 :goto_1c4

    :sswitch_55
    const-string v3, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_1c4

    :cond_5f
    const/16 v2, 0x1b

    goto/16 :goto_1c4

    :sswitch_63
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto/16 :goto_1c4

    :cond_6d
    const/16 v2, 0x1a

    goto/16 :goto_1c4

    :sswitch_71
    const-string v3, "S_TEXT/ASS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto/16 :goto_1c4

    :cond_7b
    const/16 v2, 0x19

    goto/16 :goto_1c4

    :sswitch_7f
    const-string v3, "A_PCM/INT/LIT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto/16 :goto_1c4

    :cond_89
    const/16 v2, 0x18

    goto/16 :goto_1c4

    :sswitch_8d
    const-string v3, "A_PCM/INT/BIG"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_1c4

    :cond_97
    const/16 v2, 0x17

    goto/16 :goto_1c4

    :sswitch_9b
    const-string v3, "A_PCM/FLOAT/IEEE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_1c4

    :cond_a5
    const/16 v2, 0x16

    goto/16 :goto_1c4

    :sswitch_a9
    const-string v3, "A_DTS/EXPRESS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_1c4

    :cond_b3
    const/16 v2, 0x15

    goto/16 :goto_1c4

    :sswitch_b7
    const-string v3, "V_THEORA"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_1c4

    :cond_c1
    const/16 v2, 0x14

    goto/16 :goto_1c4

    :sswitch_c5
    const-string v3, "S_HDMV/PGS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_1c4

    :cond_cf
    const/16 v2, 0x13

    goto/16 :goto_1c4

    :sswitch_d3
    const-string v3, "V_VP9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto/16 :goto_1c4

    :cond_dd
    const/16 v2, 0x12

    goto/16 :goto_1c4

    :sswitch_e1
    const-string v3, "V_VP8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto/16 :goto_1c4

    :cond_eb
    const/16 v2, 0x11

    goto/16 :goto_1c4

    :sswitch_ef
    const-string v3, "V_AV1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    goto/16 :goto_1c4

    :cond_f9
    const/16 v2, 0x10

    goto/16 :goto_1c4

    :sswitch_fd
    const-string v3, "A_DTS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_107

    goto/16 :goto_1c4

    :cond_107
    const/16 v2, 0xf

    goto/16 :goto_1c4

    :sswitch_10b
    const-string v3, "A_AC3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_115

    goto/16 :goto_1c4

    :cond_115
    const/16 v2, 0xe

    goto/16 :goto_1c4

    :sswitch_119
    const-string v3, "A_AAC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_123

    goto/16 :goto_1c4

    :cond_123
    const/16 v2, 0xd

    goto/16 :goto_1c4

    :sswitch_127
    const-string v3, "A_DTS/LOSSLESS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_131

    goto/16 :goto_1c4

    :cond_131
    const/16 v2, 0xc

    goto/16 :goto_1c4

    :sswitch_135
    const-string v3, "S_VOBSUB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13f

    goto/16 :goto_1c4

    :cond_13f
    const/16 v2, 0xb

    goto/16 :goto_1c4

    :sswitch_143
    const-string v3, "V_MPEG4/ISO/AVC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14d

    goto/16 :goto_1c4

    :cond_14d
    const/16 v2, 0xa

    goto/16 :goto_1c4

    :sswitch_151
    const-string v3, "V_MPEG4/ISO/ASP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15b

    goto/16 :goto_1c4

    :cond_15b
    const/16 v2, 0x9

    goto/16 :goto_1c4

    :sswitch_15f
    const-string v3, "S_DVBSUB"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_169

    goto/16 :goto_1c4

    :cond_169
    const/16 v2, 0x8

    goto/16 :goto_1c4

    :sswitch_16d
    const-string v3, "V_MS/VFW/FOURCC"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_176

    goto :goto_1c4

    :cond_176
    const/4 v2, 0x7

    goto :goto_1c4

    :sswitch_178
    const-string v3, "A_MPEG/L3"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_181

    goto :goto_1c4

    :cond_181
    const/4 v2, 0x6

    goto :goto_1c4

    :sswitch_183
    const-string v3, "A_MPEG/L2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18c

    goto :goto_1c4

    :cond_18c
    const/4 v2, 0x5

    goto :goto_1c4

    :sswitch_18e
    const-string v3, "A_VORBIS"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_197

    goto :goto_1c4

    :cond_197
    const/4 v2, 0x4

    goto :goto_1c4

    :sswitch_199
    const-string v3, "A_TRUEHD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a2

    goto :goto_1c4

    :cond_1a2
    const/4 v2, 0x3

    goto :goto_1c4

    :sswitch_1a4
    const-string v3, "A_MS/ACM"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1ad

    goto :goto_1c4

    :cond_1ad
    const/4 v2, 0x2

    goto :goto_1c4

    :sswitch_1af
    const-string v3, "V_MPEG4/ISO/SP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b8

    goto :goto_1c4

    :cond_1b8
    move v2, v0

    goto :goto_1c4

    :sswitch_1ba
    const-string v3, "V_MPEG4/ISO/AP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c3

    goto :goto_1c4

    :cond_1c3
    move v2, v1

    :goto_1c4
    packed-switch v2, :pswitch_data_250

    return v1

    :pswitch_1c8
    return v0

    nop

    :sswitch_data_1ca
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1ba
        -0x7ce7f3b0 -> :sswitch_1af
        -0x76567dc0 -> :sswitch_1a4
        -0x6a615338 -> :sswitch_199
        -0x672350af -> :sswitch_18e
        -0x585f4fce -> :sswitch_183
        -0x585f4fcd -> :sswitch_178
        -0x51dc40b2 -> :sswitch_16d
        -0x37a9c464 -> :sswitch_15f
        -0x2016c535 -> :sswitch_151
        -0x2016c4e5 -> :sswitch_143
        -0x19552dbd -> :sswitch_135
        -0x1538b2ba -> :sswitch_127
        0x3c02325 -> :sswitch_119
        0x3c02353 -> :sswitch_10b
        0x3c030c5 -> :sswitch_fd
        0x4e81333 -> :sswitch_ef
        0x4e86155 -> :sswitch_e1
        0x4e86156 -> :sswitch_d3
        0x5e8da3e -> :sswitch_c5
        0x1a8350d6 -> :sswitch_b7
        0x2056f406 -> :sswitch_a9
        0x25e26ee2 -> :sswitch_9b
        0x2b45174d -> :sswitch_8d
        0x2b453ce4 -> :sswitch_7f
        0x2c0618eb -> :sswitch_71
        0x32fdf009 -> :sswitch_63
        0x3e4ca2d8 -> :sswitch_55
        0x54c61e47 -> :sswitch_47
        0x6bd6c624 -> :sswitch_39
        0x7446132a -> :sswitch_2b
        0x7446b0a6 -> :sswitch_1d
        0x744ad97d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_250
    .packed-switch 0x0
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
        :pswitch_1c8
    .end packed-switch
.end method

.method public static setSubtitleEndTime(Ljava/lang/String;J[B)V
    .registers 9

    const/4 v0, 0x0

    .line 1799
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x3e8

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5a

    goto :goto_2f

    :sswitch_f
    const-string v4, "S_TEXT/UTF8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_2f

    :cond_18
    const/4 v3, 0x2

    goto :goto_2f

    :sswitch_1a
    const-string v4, "S_TEXT/WEBVTT"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_2f

    :cond_23
    const/4 v3, 0x1

    goto :goto_2f

    :sswitch_25
    const-string v4, "S_TEXT/ASS"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v3, v0

    :goto_2f
    packed-switch v3, :pswitch_data_68

    .line 1819
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1801
    :pswitch_38
    const-string p0, "%02d:%02d:%02d,%03d"

    .line 1802
    invoke-static {p1, p2, p0, v1, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x13

    goto :goto_54

    .line 1813
    :pswitch_41
    const-string p0, "%02d:%02d:%02d.%03d"

    .line 1814
    invoke-static {p1, p2, p0, v1, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x19

    goto :goto_54

    .line 1807
    :pswitch_4a
    const-string p0, "%01d:%02d:%02d:%02d"

    const-wide/16 v1, 0x2710

    .line 1808
    invoke-static {p1, p2, p0, v1, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->formatSubtitleTimecode(JLjava/lang/String;J)[B

    move-result-object p0

    const/16 p1, 0x15

    .line 1821
    :goto_54
    array-length p2, p0

    invoke-static {p0, v0, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    nop

    :sswitch_data_5a
    .sparse-switch
        0x2c0618eb -> :sswitch_25
        0x3e4ca2d8 -> :sswitch_1a
        0x54c61e47 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_41
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public final assertInCues(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lio/bidmachine/media3/common/util/LongArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lio/bidmachine/media3/common/util/LongArray;

    if-eqz v0, :cond_9

    return-void

    .line 1461
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final assertInTrackEntry(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1452
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    if-eqz v0, :cond_5

    return-void

    .line 1453
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public binaryElement(IILio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v7, p3

    const/16 v3, 0xa1

    const/16 v4, 0xa3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v1, v3, :cond_bf

    if-eq v1, v4, :cond_bf

    const/16 v3, 0xa5

    if-eq v1, v3, :cond_a9

    const/16 v3, 0x41ed

    if-eq v1, v3, :cond_a1

    const/16 v3, 0x4255

    if-eq v1, v3, :cond_94

    const/16 v3, 0x47e2

    if-eq v1, v3, :cond_83

    const/16 v3, 0x53ab

    if-eq v1, v3, :cond_60

    const/16 v3, 0x63a2

    if-eq v1, v3, :cond_53

    const/16 v3, 0x7672

    if-ne v1, v3, :cond_3d

    .line 1250
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1251
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v3, v2, [B

    iput-object v3, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 1252
    invoke-interface {v7, v3, v8, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1420
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 1245
    :cond_53
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1246
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v3, v2, [B

    iput-object v3, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 1247
    invoke-interface {v7, v3, v8, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1236
    :cond_60
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-static {v1, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 1237
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    rsub-int/lit8 v3, v2, 0x4

    invoke-interface {v7, v1, v3, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1238
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1239
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    return-void

    .line 1261
    :cond_83
    new-array v3, v2, [B

    .line 1262
    invoke-interface {v7, v3, v8, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1263
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v1

    new-instance v2, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    invoke-direct {v2, v9, v3, v8, v8}, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v2, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    return-void

    .line 1255
    :cond_94
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1257
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v3, v2, [B

    iput-object v3, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 1258
    invoke-interface {v7, v3, v8, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1242
    :cond_a1
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->handleBlockAddIDExtraData(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;Lio/bidmachine/media3/extractor/ExtractorInput;I)V

    return-void

    .line 1413
    :cond_a9
    iget v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v1, v6, :cond_af

    goto/16 :goto_304

    .line 1416
    :cond_af
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1417
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    .line 1416
    invoke-virtual {v0, v1, v3, v7, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->handleBlockAdditionalData(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;ILio/bidmachine/media3/extractor/ExtractorInput;I)V

    return-void

    .line 1274
    :cond_bf
    iget v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v10, 0x8

    if-nez v3, :cond_e4

    .line 1275
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->varintReader:Lio/bidmachine/media3/extractor/mkv/VarintReader;

    invoke-virtual {v3, v7, v8, v9, v10}, Lio/bidmachine/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Lio/bidmachine/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v11

    long-to-int v3, v11

    iput v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 1276
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->varintReader:Lio/bidmachine/media3/extractor/mkv/VarintReader;

    invoke-virtual {v3}, Lio/bidmachine/media3/extractor/mkv/VarintReader;->getLastLength()I

    move-result v3

    iput v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 1277
    iput-wide v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 1278
    iput v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 1279
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1282
    :cond_e4
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    if-nez v3, :cond_fa

    .line 1286
    iget v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v1, v2, v1

    invoke-interface {v7, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1287
    iput v8, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    .line 1291
    :cond_fa
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$100(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 1293
    iget v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v11, v9, :cond_2b2

    const/4 v11, 0x3

    .line 1295
    invoke-virtual {v0, v7, v11}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->readScratch(Lio/bidmachine/media3/extractor/ExtractorInput;I)V

    .line 1296
    iget-object v12, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    aget-byte v12, v12, v6

    and-int/lit8 v12, v12, 0x6

    shr-int/2addr v12, v9

    const/16 v13, 0xff

    if-nez v12, :cond_12c

    .line 1298
    iput v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    .line 1299
    iget-object v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v5, v9}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v5

    iput-object v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    .line 1300
    iget v12, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v12

    sub-int/2addr v2, v11

    aput v2, v5, v8

    :goto_124
    move/from16 v17, v8

    move/from16 v16, v9

    move/from16 v18, v10

    goto/16 :goto_25b

    :cond_12c
    const/4 v14, 0x4

    .line 1303
    invoke-virtual {v0, v7, v14}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->readScratch(Lio/bidmachine/media3/extractor/ExtractorInput;I)V

    .line 1304
    iget-object v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v15, v15, v11

    and-int/2addr v15, v13

    add-int/2addr v15, v9

    iput v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    move/from16 v16, v14

    .line 1305
    iget-object v14, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    invoke-static {v14, v15}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v14

    iput-object v14, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-ne v12, v6, :cond_154

    .line 1307
    iget v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x4

    iget v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v2, v5

    .line 1309
    invoke-static {v14, v8, v5, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_124

    :cond_154
    if-ne v12, v9, :cond_18f

    move v5, v8

    move v11, v5

    move/from16 v14, v16

    .line 1313
    :goto_15a
    iget v12, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    add-int/lit8 v15, v12, -0x1

    if-ge v5, v15, :cond_184

    .line 1314
    iget-object v12, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v8, v12, v5

    :goto_164
    add-int/lit8 v12, v14, 0x1

    .line 1317
    invoke-virtual {v0, v7, v12}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->readScratch(Lio/bidmachine/media3/extractor/ExtractorInput;I)V

    .line 1318
    iget-object v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v14, v15, v14

    and-int/2addr v14, v13

    .line 1319
    iget-object v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v16, v15, v5

    add-int v16, v16, v14

    aput v16, v15, v5

    if-eq v14, v13, :cond_182

    add-int v11, v11, v16

    add-int/lit8 v5, v5, 0x1

    move v14, v12

    goto :goto_15a

    :cond_182
    move v14, v12

    goto :goto_164

    .line 1323
    :cond_184
    iget-object v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    sub-int/2addr v12, v9

    iget v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v14

    sub-int/2addr v2, v11

    aput v2, v5, v12

    goto :goto_124

    :cond_18f
    if-ne v12, v11, :cond_29c

    move v11, v8

    move v12, v11

    move/from16 v14, v16

    .line 1328
    :goto_195
    iget v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    move/from16 v16, v9

    add-int/lit8 v9, v15, -0x1

    if-ge v11, v9, :cond_24c

    .line 1329
    iget-object v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v8, v9, v11

    add-int/lit8 v9, v14, 0x1

    .line 1330
    invoke-virtual {v0, v7, v9}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->readScratch(Lio/bidmachine/media3/extractor/ExtractorInput;I)V

    .line 1331
    iget-object v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v15

    aget-byte v15, v15, v14

    if-eqz v15, :cond_245

    move v15, v8

    :goto_1b1
    if-ge v15, v10, :cond_20c

    rsub-int/lit8 v17, v15, 0x7

    move/from16 v18, v10

    shl-int v10, v16, v17

    move/from16 v17, v8

    .line 1338
    iget-object v8, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    aget-byte v8, v8, v14

    and-int/2addr v8, v10

    if-eqz v8, :cond_200

    add-int/2addr v9, v15

    .line 1341
    invoke-virtual {v0, v7, v9}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->readScratch(Lio/bidmachine/media3/extractor/ExtractorInput;I)V

    .line 1342
    iget-object v8, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    add-int/lit8 v19, v14, 0x1

    aget-byte v8, v8, v14

    and-int/2addr v8, v13

    not-int v10, v10

    and-int/2addr v8, v10

    int-to-long v6, v8

    :goto_1d8
    move/from16 v8, v19

    if-ge v8, v9, :cond_1f0

    shl-long v6, v6, v18

    .line 1345
    iget-object v14, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v14

    add-int/lit8 v19, v8, 0x1

    aget-byte v8, v14, v8

    and-int/2addr v8, v13

    move/from16 v20, v11

    int-to-long v10, v8

    or-long/2addr v6, v10

    move/from16 v11, v20

    goto :goto_1d8

    :cond_1f0
    move/from16 v20, v11

    if-lez v20, :cond_1fe

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    const-wide/16 v10, 0x1

    shl-long v14, v10, v15

    sub-long/2addr v14, v10

    sub-long/2addr v6, v14

    :cond_1fe
    :goto_1fe
    move v14, v9

    goto :goto_215

    :cond_200
    move/from16 v20, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p3

    move/from16 v8, v17

    move/from16 v10, v18

    const/4 v6, 0x2

    goto :goto_1b1

    :cond_20c
    move/from16 v17, v8

    move/from16 v18, v10

    move/from16 v20, v11

    const-wide/16 v6, 0x0

    goto :goto_1fe

    :goto_215
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_23e

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-gtz v8, :cond_23e

    long-to-int v6, v6

    .line 1359
    iget-object v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v20, :cond_229

    goto :goto_22e

    :cond_229
    add-int/lit8 v11, v20, -0x1

    .line 1362
    aget v8, v7, v11

    add-int/2addr v6, v8

    :goto_22e
    aput v6, v7, v20

    add-int/2addr v12, v6

    add-int/lit8 v11, v20, 0x1

    move-object/from16 v7, p3

    move/from16 v9, v16

    move/from16 v8, v17

    move/from16 v10, v18

    const/4 v6, 0x2

    goto/16 :goto_195

    .line 1355
    :cond_23e
    const-string v1, "EBML lacing sample size out of range."

    invoke-static {v1, v5}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 1332
    :cond_245
    const-string v1, "No valid varint length mask found"

    invoke-static {v1, v5}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_24c
    move/from16 v17, v8

    move/from16 v18, v10

    .line 1365
    iget-object v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    add-int/lit8 v15, v15, -0x1

    iget v6, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v14

    sub-int/2addr v2, v12

    aput v2, v5, v15

    .line 1374
    :goto_25b
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    aget-byte v2, v2, v17

    shl-int/lit8 v2, v2, 0x8

    iget-object v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v16

    and-int/2addr v5, v13

    or-int/2addr v2, v5

    .line 1375
    iget-wide v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1376
    iget v2, v3, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v10, 0x2

    if-eq v2, v10, :cond_291

    if-ne v1, v4, :cond_28e

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1378
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    aget-byte v2, v2, v10

    const/16 v5, 0x80

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_28e

    goto :goto_291

    :cond_28e
    move/from16 v2, v17

    goto :goto_293

    :cond_291
    :goto_291
    move/from16 v2, v16

    .line 1379
    :goto_293
    iput v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1380
    iput v10, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    move/from16 v2, v17

    .line 1381
    iput v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_2b4

    .line 1369
    :cond_29c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_2b2
    move/from16 v16, v9

    :goto_2b4
    if-ne v1, v4, :cond_2e9

    .line 1387
    :goto_2b6
    iget v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v1, v2, :cond_2e5

    .line 1388
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v1, v2, v1

    move-object/from16 v7, p3

    const/4 v2, 0x0

    .line 1389
    invoke-virtual {v0, v7, v3, v1, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v5

    .line 1391
    iget-wide v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v6, v3, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v4, v6

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v8, v4

    add-long/2addr v1, v8

    .line 1393
    iget v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v6, 0x0

    move-wide/from16 v21, v1

    move-object v1, v3

    move-wide/from16 v2, v21

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    .line 1394
    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    move-object v3, v1

    goto :goto_2b6

    :cond_2e5
    const/4 v2, 0x0

    .line 1396
    iput v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    :cond_2e9
    move-object/from16 v7, p3

    move-object v1, v3

    .line 1403
    :goto_2ec
    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v2, v3, :cond_304

    .line 1404
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v4, v3, v2

    move/from16 v5, v16

    .line 1405
    invoke-virtual {v0, v7, v1, v4, v5}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v4

    aput v4, v3, v2

    .line 1407
    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/2addr v2, v5

    iput v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_2ec

    :cond_304
    :goto_304
    return-void
.end method

.method public final buildSeekMap(Lio/bidmachine/media3/common/util/LongArray;Lio/bidmachine/media3/common/util/LongArray;)Lio/bidmachine/media3/extractor/SeekMap;
    .registers 14

    .line 1883
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a3

    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a3

    if-eqz p1, :cond_a3

    .line 1886
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_a3

    if-eqz p2, :cond_a3

    .line 1888
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_29

    goto/16 :goto_a3

    .line 1892
    :cond_29
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/LongArray;->size()I

    move-result v0

    .line 1893
    new-array v1, v0, [I

    .line 1894
    new-array v2, v0, [J

    .line 1895
    new-array v3, v0, [J

    .line 1896
    new-array v4, v0, [J

    const/4 v5, 0x0

    move v6, v5

    :goto_37
    if-ge v6, v0, :cond_4b

    .line 1898
    invoke-virtual {p1, v6}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 1899
    iget-wide v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    invoke-virtual {p2, v6}, Lio/bidmachine/media3/common/util/LongArray;->get(I)J

    move-result-wide v9

    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_4b
    :goto_4b
    add-int/lit8 p1, v0, -0x1

    if-ge v5, p1, :cond_62

    add-int/lit8 p1, v5, 0x1

    .line 1902
    aget-wide v6, v2, p1

    aget-wide v8, v2, v5

    sub-long/2addr v6, v8

    long-to-int p2, v6

    aput p2, v1, v5

    .line 1903
    aget-wide v6, v4, p1

    aget-wide v8, v4, v5

    sub-long/2addr v6, v8

    aput-wide v6, v3, v5

    move v5, p1

    goto :goto_4b

    :cond_62
    move p2, p1

    :goto_63
    if-lez p2, :cond_70

    .line 1908
    aget-wide v5, v4, p2

    iget-wide v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_70

    add-int/lit8 p2, p2, -0x1

    goto :goto_63

    .line 1913
    :cond_70
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v5, v7

    aget-wide v7, v2, p2

    sub-long/2addr v5, v7

    long-to-int v0, v5

    aput v0, v1, p2

    .line 1915
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v7, v4, p2

    sub-long/2addr v5, v7

    aput-wide v5, v3, p2

    if-ge p2, p1, :cond_9d

    .line 1919
    const-string p1, "MatroskaExtractor"

    const-string v0, "Discarding trailing cue points with timestamps greater than total duration"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    .line 1920
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1921
    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 1922
    invoke-static {v3, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 1923
    invoke-static {v4, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 1926
    :cond_9d
    new-instance p1, Lio/bidmachine/media3/extractor/ChunkIndex;

    invoke-direct {p1, v1, v2, v3, v4}, Lio/bidmachine/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object p1

    .line 1890
    :cond_a3
    :goto_a3
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p1, v0, v1}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p1
.end method

.method public final commitSampleToOutput(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1479
    iget-object v2, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    const/4 v9, 0x1

    if-eqz v2, :cond_1c

    move-object v3, v2

    .line 1480
    iget-object v2, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v8, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Lio/bidmachine/media3/extractor/TrackOutput;JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    goto/16 :goto_c8

    .line 1483
    :cond_1c
    const-string v2, "S_TEXT/UTF8"

    iget-object v3, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "S_TEXT/ASS"

    iget-object v3, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1484
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "S_TEXT/WEBVTT"

    iget-object v3, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1485
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1486
    :cond_3a
    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    const-string v3, "MatroskaExtractor"

    if-le v2, v9, :cond_46

    .line 1487
    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v3, v2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 1488
    :cond_46
    iget-wide v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-nez v2, :cond_59

    .line 1489
    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v3, v2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    move/from16 v2, p5

    goto :goto_98

    .line 1491
    :cond_59
    iget-object v2, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->setSubtitleEndTime(Ljava/lang/String;J[B)V

    .line 1495
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    :goto_6a
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    if-ge v2, v3, :cond_85

    .line 1496
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_82

    .line 1497
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_85

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 1503
    :cond_85
    :goto_85
    iget-object v2, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1504
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    add-int v2, p5, v2

    :goto_98
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_b8

    .line 1509
    iget v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-le v3, v9, :cond_a9

    .line 1512
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    goto :goto_b8

    .line 1515
    :cond_a9
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    .line 1516
    iget-object v4, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v6, 0x2

    invoke-interface {v4, v5, v3, v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    add-int/2addr v2, v3

    :cond_b8
    :goto_b8
    move v14, v2

    .line 1521
    iget-object v10, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v1, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 1523
    :goto_c8
    iput-boolean v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    return-void
.end method

.method public endMasterElement(I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 804
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_fc

    const/16 v0, 0xae

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d2

    const/16 v0, 0x4dbb

    const v2, 0x1c53bb6b

    if-eq p1, v0, :cond_b9

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_74

    const v0, 0x1549a966

    if-eq p1, v0, :cond_57

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_42

    if-eq p1, v2, :cond_29

    goto/16 :goto_101

    .line 825
    :cond_29
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_3d

    .line 826
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lio/bidmachine/media3/common/util/LongArray;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->buildSeekMap(Lio/bidmachine/media3/common/util/LongArray;Lio/bidmachine/media3/common/util/LongArray;)Lio/bidmachine/media3/extractor/SeekMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 827
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    .line 831
    :cond_3d
    iput-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lio/bidmachine/media3/common/util/LongArray;

    .line 832
    iput-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lio/bidmachine/media3/common/util/LongArray;

    return-void

    .line 903
    :cond_42
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_50

    .line 907
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void

    .line 904
    :cond_50
    const-string p1, "No valid tracks were found"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 807
    :cond_57
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_67

    const-wide/32 v0, 0xf4240

    .line 809
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 811
    :cond_67
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_101

    .line 812
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    return-void

    .line 883
    :cond_74
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 884
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_101

    iget-object p1, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez p1, :cond_83

    goto/16 :goto_101

    .line 885
    :cond_83
    const-string p1, "Combining encryption and compression is not supported"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 870
    :cond_8a
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 871
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v0, :cond_101

    .line 872
    iget-object v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    if-eqz v0, :cond_b2

    .line 876
    new-instance v0, Lio/bidmachine/media3/common/DrmInitData;

    new-instance v1, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    sget-object v2, Lio/bidmachine/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object v3, v3, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    iget-object v3, v3, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string v4, "video/webm"

    invoke-direct {v1, v2, v4, v3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    filled-new-array {v1}, [Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/DrmInitData;-><init>([Lio/bidmachine/media3/common/DrmInitData$SchemeData;)V

    iput-object v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    return-void

    .line 873
    :cond_b2
    const-string p1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 816
    :cond_b9
    iget p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_cb

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_cb

    if-ne p1, v2, :cond_101

    .line 821
    iput-wide v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    return-void

    .line 817
    :cond_cb
    const-string p1, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 890
    :cond_d2
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 891
    iget-object v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    if-eqz v0, :cond_f5

    .line 895
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 896
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget v2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {p1, v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Lio/bidmachine/media3/extractor/ExtractorOutput;I)V

    .line 897
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 900
    :cond_f2
    iput-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    return-void

    .line 892
    :cond_f5
    const-string p1, "CodecId is missing in TrackEntry element"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 835
    :cond_fc
    iget p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_102

    :cond_101
    :goto_101
    return-void

    .line 839
    :cond_102
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 840
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$100(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 841
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_13d

    const-string p1, "A_OPUS"

    iget-object v0, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13d

    .line 843
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 844
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 845
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    .line 846
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 843
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([B)V

    :cond_13d
    const/4 p1, 0x0

    move v0, p1

    move v2, v0

    .line 852
    :goto_140
    iget v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v3, :cond_14c

    .line 853
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_140

    :cond_14c
    move v7, p1

    .line 855
    :goto_14d
    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v7, v0, :cond_174

    .line 856
    iget-wide v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v0, v1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v0, v7

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 857
    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    if-nez v7, :cond_164

    .line 858
    iget-boolean v5, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    if-nez v5, :cond_164

    or-int/lit8 v0, v0, 0x1

    .line 863
    :cond_164
    iget-object v5, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v5, v5, v7

    sub-int v6, v2, v5

    move-wide v2, v3

    move v4, v0

    move-object v0, p0

    .line 865
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v7, v7, 0x1

    move v2, v6

    goto :goto_14d

    :cond_174
    move-object v0, p0

    .line 867
    iput p1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void
.end method

.method public final finishWriteSampleData()I
    .registers 2

    .line 1747
    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1748
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    return v0
.end method

.method public floatElement(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_7b

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_77

    packed-switch p1, :pswitch_data_84

    packed-switch p1, :pswitch_data_9c

    return-void

    .line 1190
    :pswitch_f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    return-void

    .line 1187
    :pswitch_17
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    return-void

    .line 1184
    :pswitch_1f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    return-void

    .line 1181
    :pswitch_27
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    return-void

    .line 1178
    :pswitch_2f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    return-void

    .line 1175
    :pswitch_37
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    return-void

    .line 1172
    :pswitch_3f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    return-void

    .line 1169
    :pswitch_47
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    return-void

    .line 1166
    :pswitch_4f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    return-void

    .line 1163
    :pswitch_57
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    return-void

    .line 1160
    :pswitch_5f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    return-void

    .line 1157
    :pswitch_67
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    return-void

    .line 1154
    :pswitch_6f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-float p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    return-void

    :cond_77
    double-to-long p1, p2

    .line 1148
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    return-void

    .line 1151
    :cond_7b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    double-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    return-void

    nop

    :pswitch_data_84
    .packed-switch 0x55d1
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_27
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x7673
        :pswitch_1f
        :pswitch_17
        :pswitch_f
    .end packed-switch
.end method

.method public getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1472
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1473
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    return-object p1
.end method

.method public getElementType(I)I
    .registers 2

    .line 0
    sparse-switch p1, :sswitch_data_10

    const/4 p1, 0x0

    return p1

    :sswitch_5
    const/4 p1, 0x5

    return p1

    :sswitch_7
    const/4 p1, 0x4

    return p1

    :sswitch_9
    const/4 p1, 0x1

    return p1

    :sswitch_b
    const/4 p1, 0x3

    return p1

    :sswitch_d
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xa5 -> :sswitch_7
        0xa6 -> :sswitch_9
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xee -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x41e4 -> :sswitch_9
        0x41e7 -> :sswitch_d
        0x41ed -> :sswitch_7
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x536e -> :sswitch_b
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b2 -> :sswitch_d
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x55ee -> :sswitch_d
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x75a1 -> :sswitch_9
        0x75a2 -> :sswitch_d
        0x7670 -> :sswitch_9
        0x7671 -> :sswitch_d
        0x7672 -> :sswitch_7
        0x7673 -> :sswitch_5
        0x7674 -> :sswitch_5
        0x7675 -> :sswitch_5
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method public handleBlockAddIDExtraData(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;Lio/bidmachine/media3/extractor/ExtractorInput;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1427
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$200(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;)I

    move-result v0

    const v1, 0x64767643

    if-eq v0, v1, :cond_17

    .line 1428
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$200(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;)I

    move-result v0

    const v1, 0x64766343

    if-ne v0, v1, :cond_13

    goto :goto_17

    .line 1433
    :cond_13
    invoke-interface {p2, p3}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return-void

    .line 1429
    :cond_17
    :goto_17
    new-array v0, p3, [B

    iput-object v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    const/4 p1, 0x0

    .line 1430
    invoke-interface {p2, v0, p1, p3}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public handleBlockAdditionalData(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;ILio/bidmachine/media3/extractor/ExtractorInput;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1d

    .line 1440
    const-string p2, "V_VP9"

    iget-object p1, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 1441
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1442
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1443
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p4}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    .line 1446
    :cond_1d
    invoke-interface {p3, p4}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method

.method public final init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 567
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_c

    .line 568
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    .line 569
    :cond_c
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public integerElement(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x5031

    const/4 v1, 0x0

    .line 921
    const-string v2, " not supported"

    if-eq p1, v0, :cond_238

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_21a

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_258

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_2de

    goto/16 :goto_23e

    .line 1110
    :pswitch_1a
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    return-void

    .line 1107
    :pswitch_22
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    return-void

    .line 1074
    :pswitch_2a
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1075
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v7, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p1, p2

    .line 1076
    invoke-static {p1}, Lio/bidmachine/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result p1

    if-eq p1, v0, :cond_23e

    .line 1078
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    return-void

    .line 1082
    :pswitch_3d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    .line 1083
    invoke-static {p1}, Lio/bidmachine/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result p1

    if-eq p1, v0, :cond_23e

    .line 1085
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    return-void

    .line 1094
    :pswitch_4c
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_5b

    if-eq p1, v6, :cond_56

    goto/16 :goto_23e

    .line 1100
    :cond_56
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    return-void

    .line 1097
    :cond_5b
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    return-void

    .line 942
    :sswitch_60
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    return-void

    .line 972
    :sswitch_63
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    return-void

    .line 1113
    :sswitch_6b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_88

    if-eq p1, v7, :cond_83

    if-eq p1, v6, :cond_7e

    if-eq p1, v5, :cond_79

    goto/16 :goto_23e

    .line 1125
    :cond_79
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 1122
    :cond_7e
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 1119
    :cond_83
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 1116
    :cond_88
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    .line 987
    :sswitch_8d
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    return-void

    .line 993
    :sswitch_90
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    return-void

    .line 984
    :sswitch_98
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    iput-wide p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    return-void

    .line 981
    :sswitch_9f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    iput-wide p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    return-void

    .line 975
    :sswitch_a6
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    return-void

    .line 1089
    :sswitch_ae
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    .line 1090
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v7, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p2, p2

    .line 1091
    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    return-void

    .line 966
    :sswitch_b9
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    cmp-long p2, p2, v3

    if-nez p2, :cond_c2

    move v0, v7

    :cond_c2
    iput-boolean v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    return-void

    .line 954
    :sswitch_c5
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    return-void

    .line 957
    :sswitch_cd
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    return-void

    .line 951
    :sswitch_d5
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    return-void

    :sswitch_dd
    long-to-int p2, p2

    .line 1055
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    if-eqz p2, :cond_fc

    if-eq p2, v7, :cond_f7

    if-eq p2, v5, :cond_f2

    const/16 p1, 0xf

    if-eq p2, p1, :cond_ed

    goto/16 :goto_23e

    .line 1067
    :cond_ed
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 1064
    :cond_f2
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 1061
    :cond_f7
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 1058
    :cond_fc
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    .line 939
    :sswitch_101
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    return-void

    :sswitch_107
    cmp-long p1, p2, v3

    if-nez p1, :cond_10d

    goto/16 :goto_23e

    .line 1029
    :cond_10d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_126
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_12e

    goto/16 :goto_23e

    .line 1022
    :cond_12e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_147
    cmp-long p1, p2, v3

    if-nez p1, :cond_14d

    goto/16 :goto_23e

    .line 925
    :cond_14d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_166
    cmp-long p1, p2, v3

    if-ltz p1, :cond_172

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_172

    goto/16 :goto_23e

    .line 932
    :cond_172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_18b
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_193

    goto/16 :goto_23e

    .line 1015
    :cond_193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 978
    :sswitch_1ac
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$202(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;I)I

    return-void

    .line 996
    :sswitch_1b5
    iput-boolean v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    return-void

    .line 1038
    :sswitch_1b8
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_23e

    .line 1039
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 1043
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    .line 1044
    iput-boolean v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    return-void

    :sswitch_1c7
    long-to-int p1, p2

    .line 1132
    iput p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    return-void

    .line 1048
    :sswitch_1cb
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    return-void

    .line 960
    :sswitch_1d2
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    return-void

    .line 948
    :sswitch_1da
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    return-void

    .line 1034
    :sswitch_1e2
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    .line 1035
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lio/bidmachine/media3/common/util/LongArray;

    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/common/util/LongArray;->add(J)V

    return-void

    .line 945
    :sswitch_1ef
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    return-void

    .line 990
    :sswitch_1f7
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    return-void

    .line 1051
    :sswitch_1ff
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    return-void

    .line 963
    :sswitch_206
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    cmp-long p2, p2, v3

    if-nez p2, :cond_20f

    move v0, v7

    :cond_20f
    iput-boolean v0, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    return-void

    .line 969
    :sswitch_212
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    long-to-int p2, p2

    iput p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    return-void

    :cond_21a
    cmp-long p1, p2, v3

    if-nez p1, :cond_21f

    goto :goto_23e

    .line 1008
    :cond_21f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingScope "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_238
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_23f

    :cond_23e
    :goto_23e
    return-void

    .line 1001
    :cond_23f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ContentEncodingOrder "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    :sswitch_data_258
    .sparse-switch
        0x83 -> :sswitch_212
        0x88 -> :sswitch_206
        0x9b -> :sswitch_1ff
        0x9f -> :sswitch_1f7
        0xb0 -> :sswitch_1ef
        0xb3 -> :sswitch_1e2
        0xba -> :sswitch_1da
        0xd7 -> :sswitch_1d2
        0xe7 -> :sswitch_1cb
        0xee -> :sswitch_1c7
        0xf1 -> :sswitch_1b8
        0xfb -> :sswitch_1b5
        0x41e7 -> :sswitch_1ac
        0x4254 -> :sswitch_18b
        0x4285 -> :sswitch_166
        0x42f7 -> :sswitch_147
        0x47e1 -> :sswitch_126
        0x47e8 -> :sswitch_107
        0x53ac -> :sswitch_101
        0x53b8 -> :sswitch_dd
        0x54b0 -> :sswitch_d5
        0x54b2 -> :sswitch_cd
        0x54ba -> :sswitch_c5
        0x55aa -> :sswitch_b9
        0x55b2 -> :sswitch_ae
        0x55ee -> :sswitch_a6
        0x56aa -> :sswitch_9f
        0x56bb -> :sswitch_98
        0x6264 -> :sswitch_90
        0x75a2 -> :sswitch_8d
        0x7671 -> :sswitch_6b
        0x23e383 -> :sswitch_63
        0x2ad7b1 -> :sswitch_60
    .end sparse-switch

    :pswitch_data_2de
    .packed-switch 0x55b9
        :pswitch_4c
        :pswitch_3d
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
    .end packed-switch
.end method

.method public isLevel1Element(I)Z
    .registers 3

    .line 0
    const v0, 0x1549a966

    if-eq p1, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public final maybeSeekForCues(Lio/bidmachine/media3/extractor/PositionHolder;J)Z
    .registers 9

    .line 1939
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 1940
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1941
    iget-wide p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide p2, p1, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 1942
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    return v1

    .line 1947
    :cond_f
    iget-boolean p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz p2, :cond_20

    iget-wide p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_20

    .line 1948
    iput-wide p2, p1, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 1949
    iput-wide v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    return v1

    :cond_20
    return v2
.end method

.method public final read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_5
    if-eqz v2, :cond_1e

    .line 594
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->haveOutputSample:Z

    if-nez v3, :cond_1e

    .line 595
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->reader:Lio/bidmachine/media3/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Lio/bidmachine/media3/extractor/mkv/EbmlReader;->read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 596
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-virtual {p0, p2, v3, v4}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Lio/bidmachine/media3/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_1e
    if-nez v2, :cond_3b

    .line 601
    :goto_20
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_39

    .line 602
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 603
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$100(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 604
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_39
    const/4 p1, -0x1

    return p1

    :cond_3b
    return v0
.end method

.method public final readScratch(Lio/bidmachine/media3/extractor/ExtractorInput;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1531
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    .line 1534
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_20

    .line 1535
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->ensureCapacity(I)V

    .line 1537
    :cond_20
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1538
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final release()V
    .registers 1

    .line 0
    return-void
.end method

.method public final resetWriteSampleData()V
    .registers 3

    const/4 v0, 0x0

    .line 1754
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1755
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1756
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1757
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1758
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1759
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1760
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1761
    iput-byte v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1762
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1763
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public final scaleTimecodeToUs(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1956
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 1960
    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1957
    :cond_13
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public seek(JJ)V
    .registers 5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 575
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    .line 576
    iput p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 577
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->reader:Lio/bidmachine/media3/extractor/mkv/EbmlReader;

    invoke-interface {p2}, Lio/bidmachine/media3/extractor/mkv/EbmlReader;->reset()V

    .line 578
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->varintReader:Lio/bidmachine/media3/extractor/mkv/VarintReader;

    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/mkv/VarintReader;->reset()V

    .line 579
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->resetWriteSampleData()V

    .line 580
    :goto_17
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_2d

    .line 581
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_2d
    return-void
.end method

.method public final sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    new-instance v0, Lio/bidmachine/media3/extractor/mkv/Sniffer;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/mkv/Sniffer;->sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

.method public startMasterElement(IJJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 740
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->assertInitialized()V

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_99

    const/16 v0, 0xae

    if-eq p1, v0, :cond_8d

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_84

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7d

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_76

    const v0, 0x18538067

    if-eq p1, v0, :cond_5e

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_4f

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_2f

    goto :goto_4e

    .line 762
    :cond_2f
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_4e

    .line 764
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz p1, :cond_40

    iget-wide p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_40

    .line 766
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    return-void

    .line 770
    :cond_40
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    iget-wide p3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p2, p3, p4}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 771
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    :cond_4e
    :goto_4e
    return-void

    .line 755
    :cond_4f
    new-instance p1, Lio/bidmachine/media3/common/util/LongArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/LongArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lio/bidmachine/media3/common/util/LongArray;

    .line 756
    new-instance p1, Lio/bidmachine/media3/common/util/LongArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/LongArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lio/bidmachine/media3/common/util/LongArray;

    return-void

    .line 743
    :cond_5e
    iget-wide v3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_71

    cmp-long p1, v3, p2

    if-nez p1, :cond_69

    goto :goto_71

    .line 744
    :cond_69
    const-string p1, "Multiple Segment elements not supported"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 747
    :cond_71
    :goto_71
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 748
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    return-void

    .line 790
    :cond_76
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    iput-boolean v3, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    return-void

    .line 783
    :cond_7d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    iput-boolean v3, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    return-void

    :cond_84
    const/4 p1, -0x1

    .line 751
    iput p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 752
    iput-wide v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    return-void

    .line 759
    :cond_8a
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    return-void

    .line 786
    :cond_8d
    new-instance p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 787
    iget-boolean p2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->isWebm:Z

    iput-boolean p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->isWebm:Z

    return-void

    .line 776
    :cond_99
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    const-wide/16 p1, 0x0

    .line 777
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_55

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_21

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1a

    const v0, 0x22b59c

    if-eq p1, v0, :cond_12

    return-void

    .line 1220
    :cond_12
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$302(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 1214
    :cond_1a
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    iput-object p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    return-void

    .line 1207
    :cond_21
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_4e

    .line 1208
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DocType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 1211
    :cond_4e
    :goto_4e
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->isWebm:Z

    return-void

    .line 1217
    :cond_55
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getCurrentTrack(I)Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;

    move-result-object p1

    iput-object p2, p1, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    return-void
.end method

.method public final writeSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1554
    iget-object v0, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1555
    sget-object p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;[BI)V

    .line 1556
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p1

    return p1

    .line 1557
    :cond_14
    const-string v0, "S_TEXT/ASS"

    iget-object v1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1558
    sget-object p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;[BI)V

    .line 1559
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p1

    return p1

    .line 1560
    :cond_28
    const-string v0, "S_TEXT/WEBVTT"

    iget-object v1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1561
    sget-object p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->VTT_PREFIX:[B

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;[BI)V

    .line 1562
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p1

    return p1

    .line 1565
    :cond_3c
    iget-object v0, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 1566
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1f3

    .line 1567
    iget-boolean v1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_189

    .line 1570
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1571
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v6, 0x80

    if-nez v1, :cond_86

    .line 1572
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1573
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1574
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_7e

    .line 1578
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1579
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_86

    .line 1575
    :cond_7e
    const-string p1, "Extension bit is set in signal byte"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 1581
    :cond_86
    :goto_86
    iget-byte v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_193

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_91

    move v1, v4

    goto :goto_92

    :cond_91
    move v1, v5

    .line 1584
    :goto_92
    iget v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1585
    iget-boolean v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v7, :cond_db

    .line 1586
    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1587
    iget v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v8

    iput v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1588
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1590
    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    if-eqz v1, :cond_b8

    goto :goto_b9

    :cond_b8
    move v6, v5

    :goto_b9
    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 1591
    aput-byte v6, v7, v5

    .line 1592
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1593
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v6, v4, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    .line 1594
    iget v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1596
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1597
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v6, v8, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    .line 1601
    iget v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    iput v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_db
    if-eqz v1, :cond_193

    .line 1604
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v1, :cond_fe

    .line 1605
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1606
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1607
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1608
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1609
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1611
    :cond_fe
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/2addr v1, v2

    .line 1612
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1613
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-interface {p1, v6, v5, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1614
    iget v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v1

    iput v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1615
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 1617
    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_126

    .line 1618
    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_12c

    .line 1619
    :cond_126
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1621
    :cond_12c
    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1622
    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v5

    move v7, v1

    .line 1630
    :goto_138
    iget v8, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v1, v8, :cond_15a

    .line 1632
    iget-object v8, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 1633
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_14f

    .line 1634
    iget-object v9, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_156

    .line 1637
    :cond_14f
    iget-object v9, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_156
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_138

    .line 1640
    :cond_15a
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1641
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_168

    .line 1642
    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_173

    .line 1644
    :cond_168
    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1645
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1647
    :goto_173
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v7, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 1648
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v1, v6, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    .line 1652
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v6

    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_193

    .line 1655
    :cond_189
    iget-object v1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v1, :cond_193

    .line 1657
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 1660
    :cond_193
    :goto_193
    invoke-static {p2, p4}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->access$400(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;Z)Z

    move-result p4

    if-eqz p4, :cond_1f1

    .line 1661
    iget p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr p4, v1

    iput p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1662
    iget-object p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p4, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1665
    iget-object p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p4

    add-int/2addr p4, p3

    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int/2addr p4, v1

    .line 1666
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1667
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 1668
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 1669
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 1670
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v6, 0x3

    aput-byte p4, v1, v6

    .line 1671
    iget-object p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, p4, v2, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    .line 1672
    iget p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p4, v2

    iput p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1675
    :cond_1f1
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1677
    :cond_1f3
    iget-object p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p4

    add-int/2addr p3, p4

    .line 1679
    const-string p4, "V_MPEG4/ISO/AVC"

    iget-object v1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_23a

    const-string p4, "V_MPEGH/ISO/HEVC"

    iget-object v1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_20f

    goto :goto_23a

    .line 1714
    :cond_20f
    iget-object p4, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    if-eqz p4, :cond_225

    .line 1715
    iget-object p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p4

    if-nez p4, :cond_21c

    goto :goto_21d

    :cond_21c
    move v4, v5

    :goto_21d
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1716
    iget-object p4, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {p4, p1}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->startSample(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    .line 1718
    :cond_225
    :goto_225
    iget p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge p4, p3, :cond_28b

    sub-int p4, p3, p4

    .line 1719
    invoke-virtual {p0, p1, v0, p4}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeToOutput(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/TrackOutput;I)I

    move-result p4

    .line 1720
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, p4

    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1721
    iget v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, p4

    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_225

    .line 1684
    :cond_23a
    :goto_23a
    iget-object p4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p4

    .line 1685
    aput-byte v5, p4, v5

    .line 1686
    aput-byte v5, p4, v4

    .line 1687
    aput-byte v5, p4, v3

    .line 1688
    iget v1, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v3, v1, 0x4

    .line 1693
    :goto_24a
    iget v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v4, p3, :cond_28b

    .line 1694
    iget v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v4, :cond_277

    .line 1696
    invoke-virtual {p0, p1, p4, v3, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeToTarget(Lio/bidmachine/media3/extractor/ExtractorInput;[BII)V

    .line 1698
    iget v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v4, v1

    iput v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1699
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1700
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->nalLength:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    iput v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1702
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1703
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v4, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1704
    iget v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v4, v2

    iput v4, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_24a

    .line 1707
    :cond_277
    invoke-virtual {p0, p1, v0, v4}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->writeToOutput(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/TrackOutput;I)I

    move-result v4

    .line 1708
    iget v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v4

    iput v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1709
    iget v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1710
    iget v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v4

    iput v6, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_24a

    .line 1725
    :cond_28b
    const-string p1, "A_VORBIS"

    iget-object p2, p2, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a4

    .line 1734
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1735
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, p1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1736
    iget p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1739
    :cond_2a4
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->finishWriteSampleData()I

    move-result p1

    return p1
.end method

.method public final writeSubtitleSampleData(Lio/bidmachine/media3/extractor/ExtractorInput;[BI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1768
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1769
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_17

    .line 1772
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([B)V

    goto :goto_21

    .line 1774
    :cond_17
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1776
    :goto_21
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1777
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1778
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->subtitleSample:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method public final writeToOutput(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/TrackOutput;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1865
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_12

    .line 1867
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1868
    iget-object p3, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    return p1

    :cond_12
    const/4 v0, 0x0

    .line 1870
    invoke-interface {p2, p1, p3, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public final writeToTarget(Lio/bidmachine/media3/extractor/ExtractorInput;[BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1851
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int/2addr p4, v0

    .line 1852
    invoke-interface {p1, p2, v1, p4}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    if-lez v0, :cond_17

    .line 1854
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2, p3, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :cond_17
    return-void
.end method

###### Class io.bidmachine.media3.extractor.mkv.MatroskaExtractor.AnonymousClass1 (io.bidmachine.media3.extractor.mkv.MatroskaExtractor$1)
.class public synthetic Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$1;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.mkv.MatroskaExtractor.InnerEbmlProcessor (io.bidmachine.media3.extractor.mkv.MatroskaExtractor$InnerEbmlProcessor)
.class public final Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/mkv/EbmlProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;)V
    .registers 2

    .line 2025
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$1;)V
    .registers 3

    .line 2025
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->binaryElement(IILio/bidmachine/media3/extractor/ExtractorInput;)V

    return-void
.end method

.method public endMasterElement(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2045
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->endMasterElement(I)V

    return-void
.end method

.method public floatElement(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2055
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->floatElement(ID)V

    return-void
.end method

.method public getElementType(I)I
    .registers 3

    .line 2029
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->getElementType(I)I

    move-result p1

    return p1
.end method

.method public integerElement(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2050
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->integerElement(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .registers 3

    .line 2034
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->isLevel1Element(I)Z

    move-result p1

    return p1
.end method

.method public startMasterElement(IJJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2040
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->startMasterElement(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2060
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->this$0:Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->stringElement(ILjava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.mkv.MatroskaExtractor.Track (io.bidmachine.media3.extractor.mkv.MatroskaExtractor$Track)
.class public final Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Track"
.end annotation


# instance fields
.field public audioBitDepth:I

.field public bitsPerChannel:I

.field public blockAddIdType:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public dolbyVisionConfigBytes:[B

.field public drmInitData:Lio/bidmachine/media3/common/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field public isWebm:Z

.field public language:Ljava/lang/String;

.field public maxBlockAdditionId:I

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 2070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2097
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2098
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2099
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    .line 2100
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2101
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    .line 2102
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    .line 2103
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    const/4 v2, 0x0

    .line 2104
    iput v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    .line 2105
    iput v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2106
    iput v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/4 v2, 0x0

    .line 2107
    iput-object v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2108
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2109
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    .line 2110
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 2111
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 2112
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    .line 2113
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    .line 2114
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2115
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 2116
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 2117
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 2118
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 2119
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 2120
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 2121
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 2122
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 2123
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 2124
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    .line 2128
    iput v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2129
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    .line 2130
    iput v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    .line 2131
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    .line 2132
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    .line 2137
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 2138
    const-string v0, "eng"

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;)V
    .registers 1

    .line 2070
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;)I
    .registers 1

    .line 2070
    iget p0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p0
.end method

.method public static synthetic access$202(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;I)I
    .registers 2

    .line 2070
    iput p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p1
.end method

.method public static synthetic access$302(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2070
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;Z)Z
    .registers 2

    .line 2070
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->samplesHaveSupplementalData(Z)Z

    move-result p0

    return p0
.end method

.method public static parseFourCcPrivate(Lio/bidmachine/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 2536
    :try_start_3
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2537
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    .line 2539
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_19
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_28

    .line 2541
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_28
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_72

    .line 2545
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2546
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    .line 2547
    :goto_39
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_6b

    .line 2548
    aget-byte v2, p0, v0

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_68

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_68

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_68

    .line 2553
    array-length v2, p0

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 2554
    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 2557
    :cond_6b
    const-string p0, "Failed to find FourCC VC1 initialization data"

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
    :try_end_72
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_72} :catch_81

    .line 2565
    :cond_72
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 2561
    :catch_81
    const-string p0, "Error parsing FourCC private data"

    invoke-static {p0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseMsAcmCodecPrivate(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2633
    :try_start_0
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_34

    const/16 v0, 0x18

    .line 2637
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2638
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_34

    .line 2639
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_2f} :catch_35

    cmp-long p0, v4, v6

    if-nez p0, :cond_34

    return v1

    :cond_34
    return v3

    .line 2644
    :catch_35
    const-string p0, "Error parsing MS/ACM codec private"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseVorbisCodecPrivate([B)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2578
    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    aget-byte v3, p0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_64

    const/4 v3, 0x1

    move v6, v2

    move v5, v3

    .line 2584
    :goto_c
    aget-byte v7, p0, v5

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_19

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_19
    add-int/2addr v5, v3

    and-int/2addr v7, v9

    add-int/2addr v6, v7

    move v7, v2

    .line 2591
    :goto_1d
    aget-byte v8, p0, v5

    and-int/lit16 v10, v8, 0xff

    if-ne v10, v9, :cond_28

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_28
    add-int/2addr v5, v3

    and-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2597
    aget-byte v8, p0, v5

    if-ne v8, v3, :cond_5f

    .line 2601
    new-array v3, v6, [B

    .line 2602
    invoke-static {p0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    .line 2604
    aget-byte v6, p0, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5a

    add-int/2addr v5, v7

    .line 2609
    aget-byte v6, p0, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_55

    .line 2613
    array-length v6, p0

    sub-int/2addr v6, v5

    new-array v6, v6, [B

    .line 2614
    array-length v7, p0

    sub-int/2addr v7, v5

    invoke-static {p0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2615
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2616
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2617
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2610
    :cond_55
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 2605
    :cond_5a
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 2598
    :cond_5f
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 2579
    :cond_64
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
    :try_end_69
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_69} :catch_69

    .line 2620
    :catch_69
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final assertOutputInitialized()V
    .registers 2

    .line 2658
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getCodecPrivate(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 2663
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-eqz v0, :cond_5

    return-object v0

    .line 2664
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing CodecPrivate for codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final getHdrStaticInfo()[B
    .registers 6

    .line 2494
    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_bb

    iget v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3f

    goto :goto_bb

    :cond_3f
    const/16 v0, 0x19

    .line 2507
    new-array v0, v0, [B

    .line 2508
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2509
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2510
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2511
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2512
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2513
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2514
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2515
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2516
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2517
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2518
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2519
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2520
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2521
    iget v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_bb
    :goto_bb
    const/4 v0, 0x0

    return-object v0
.end method

.method public initializeOutput(Lio/bidmachine/media3/extractor/ExtractorOutput;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v2, 0x10

    .line 2153
    iget-object v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "application/dvbsubs"

    const-string v8, "application/vobsub"

    const-string v9, "application/pgs"

    const-string v11, "text/x-ssa"

    const-string v12, "text/vtt"

    const-string v13, "application/x-subrip"

    const/16 v15, 0x8

    const/4 v3, 0x3

    const-string v6, ". Setting mimeType to "

    const-string v16, "audio/raw"

    const-string v4, "MatroskaExtractor"

    const-string v14, "audio/x-unknown"

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_608

    :goto_28
    const/4 v1, -0x1

    goto/16 :goto_1dd

    :sswitch_2b
    const-string v1, "A_OPUS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_28

    :cond_34
    const/16 v1, 0x20

    goto/16 :goto_1dd

    :sswitch_38
    const-string v1, "A_FLAC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_28

    :cond_41
    const/16 v1, 0x1f

    goto/16 :goto_1dd

    :sswitch_45
    const-string v1, "A_EAC3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_28

    :cond_4e
    const/16 v1, 0x1e

    goto/16 :goto_1dd

    :sswitch_52
    const-string v1, "V_MPEG2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_28

    :cond_5b
    const/16 v1, 0x1d

    goto/16 :goto_1dd

    :sswitch_5f
    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    goto :goto_28

    :cond_68
    const/16 v1, 0x1c

    goto/16 :goto_1dd

    :sswitch_6c
    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    goto :goto_28

    :cond_75
    const/16 v1, 0x1b

    goto/16 :goto_1dd

    :sswitch_79
    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    goto :goto_28

    :cond_82
    const/16 v1, 0x1a

    goto/16 :goto_1dd

    :sswitch_86
    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    goto :goto_28

    :cond_8f
    const/16 v1, 0x19

    goto/16 :goto_1dd

    :sswitch_93
    const-string v1, "A_PCM/INT/LIT"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    goto :goto_28

    :cond_9c
    const/16 v1, 0x18

    goto/16 :goto_1dd

    :sswitch_a0
    const-string v1, "A_PCM/INT/BIG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    goto/16 :goto_28

    :cond_aa
    const/16 v1, 0x17

    goto/16 :goto_1dd

    :sswitch_ae
    const-string v1, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    goto/16 :goto_28

    :cond_b8
    const/16 v1, 0x16

    goto/16 :goto_1dd

    :sswitch_bc
    const-string v1, "A_DTS/EXPRESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    goto/16 :goto_28

    :cond_c6
    const/16 v1, 0x15

    goto/16 :goto_1dd

    :sswitch_ca
    const-string v1, "V_THEORA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    goto/16 :goto_28

    :cond_d4
    const/16 v1, 0x14

    goto/16 :goto_1dd

    :sswitch_d8
    const-string v1, "S_HDMV/PGS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    goto/16 :goto_28

    :cond_e2
    const/16 v1, 0x13

    goto/16 :goto_1dd

    :sswitch_e6
    const-string v1, "V_VP9"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    goto/16 :goto_28

    :cond_f0
    const/16 v1, 0x12

    goto/16 :goto_1dd

    :sswitch_f4
    const-string v1, "V_VP8"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    goto/16 :goto_28

    :cond_fe
    const/16 v1, 0x11

    goto/16 :goto_1dd

    :sswitch_102
    const-string v1, "V_AV1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10c

    goto/16 :goto_28

    :cond_10c
    move v1, v2

    goto/16 :goto_1dd

    :sswitch_10f
    const-string v1, "A_DTS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_119

    goto/16 :goto_28

    :cond_119
    const/16 v1, 0xf

    goto/16 :goto_1dd

    :sswitch_11d
    const-string v1, "A_AC3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    goto/16 :goto_28

    :cond_127
    const/16 v1, 0xe

    goto/16 :goto_1dd

    :sswitch_12b
    const-string v1, "A_AAC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    goto/16 :goto_28

    :cond_135
    const/16 v1, 0xd

    goto/16 :goto_1dd

    :sswitch_139
    const-string v1, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_143

    goto/16 :goto_28

    :cond_143
    const/16 v1, 0xc

    goto/16 :goto_1dd

    :sswitch_147
    const-string v1, "S_VOBSUB"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_151

    goto/16 :goto_28

    :cond_151
    const/16 v1, 0xb

    goto/16 :goto_1dd

    :sswitch_155
    const-string v1, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15f

    goto/16 :goto_28

    :cond_15f
    const/16 v1, 0xa

    goto/16 :goto_1dd

    :sswitch_163
    const-string v1, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16d

    goto/16 :goto_28

    :cond_16d
    const/16 v1, 0x9

    goto/16 :goto_1dd

    :sswitch_171
    const-string v1, "S_DVBSUB"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17b

    goto/16 :goto_28

    :cond_17b
    move v1, v15

    goto/16 :goto_1dd

    :sswitch_17e
    const-string v1, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_188

    goto/16 :goto_28

    :cond_188
    const/4 v1, 0x7

    goto :goto_1dd

    :sswitch_18a
    const-string v1, "A_MPEG/L3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_194

    goto/16 :goto_28

    :cond_194
    const/4 v1, 0x6

    goto :goto_1dd

    :sswitch_196
    const-string v1, "A_MPEG/L2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a0

    goto/16 :goto_28

    :cond_1a0
    const/4 v1, 0x5

    goto :goto_1dd

    :sswitch_1a2
    const-string v1, "A_VORBIS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ac

    goto/16 :goto_28

    :cond_1ac
    const/4 v1, 0x4

    goto :goto_1dd

    :sswitch_1ae
    const-string v1, "A_TRUEHD"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b8

    goto/16 :goto_28

    :cond_1b8
    move v1, v3

    goto :goto_1dd

    :sswitch_1ba
    const-string v1, "A_MS/ACM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c4

    goto/16 :goto_28

    :cond_1c4
    const/4 v1, 0x2

    goto :goto_1dd

    :sswitch_1c6
    const-string v1, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d0

    goto/16 :goto_28

    :cond_1d0
    const/4 v1, 0x1

    goto :goto_1dd

    :sswitch_1d2
    const-string v1, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1dc

    goto/16 :goto_28

    :cond_1dc
    const/4 v1, 0x0

    :goto_1dd
    packed-switch v1, :pswitch_data_68e

    .line 2348
    const-string v1, "Unrecognized codec identifier."

    invoke-static {v1, v10}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 2208
    :pswitch_1e7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2209
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 2210
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2213
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 2212
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2214
    const-string v16, "audio/opus"

    const/16 v6, 0x1680

    move-object v2, v10

    const/4 v5, 0x0

    :goto_227
    const/4 v14, -0x1

    goto/16 :goto_449

    .line 2252
    :pswitch_22a
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2253
    const-string v16, "audio/flac"

    :goto_236
    move-object v2, v10

    :goto_237
    const/4 v5, 0x0

    :goto_238
    const/4 v6, -0x1

    goto :goto_227

    .line 2238
    :pswitch_23a
    const-string v16, "audio/eac3"

    :goto_23c
    move-object v1, v10

    move-object v2, v1

    goto :goto_237

    .line 2167
    :pswitch_23f
    const-string v16, "video/mpeg2"

    goto :goto_23c

    :pswitch_242
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v13

    goto :goto_237

    :pswitch_247
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v12

    goto :goto_237

    .line 2184
    :pswitch_24c
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lio/bidmachine/media3/extractor/HevcConfig;->parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/HevcConfig;

    move-result-object v1

    .line 2185
    iget-object v2, v1, Lio/bidmachine/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    .line 2186
    iget v4, v1, Lio/bidmachine/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2187
    iget-object v1, v1, Lio/bidmachine/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    .line 2188
    const-string v16, "video/hevc"

    :goto_265
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_237

    .line 2328
    :pswitch_269
    invoke-static {}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->access$500()[B

    move-result-object v1

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v2, v10

    move-object/from16 v16, v11

    goto :goto_237

    .line 2275
    :pswitch_27b
    iget v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_2a4

    .line 2279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported little endian PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29f
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v14

    goto :goto_237

    :cond_2a4
    move v14, v1

    :goto_2a5
    move-object v1, v10

    move-object v2, v1

    const/4 v5, 0x0

    :goto_2a8
    const/4 v6, -0x1

    goto/16 :goto_449

    .line 2289
    :pswitch_2ab
    iget v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v1, v15, :cond_2b1

    move v14, v3

    goto :goto_2a5

    :cond_2b1
    if-ne v1, v2, :cond_2b6

    const/high16 v14, 0x10000000

    goto :goto_2a5

    :cond_2b6
    const/16 v2, 0x18

    if-ne v1, v2, :cond_2bd

    const/high16 v14, 0x50000000

    goto :goto_2a5

    :cond_2bd
    const/16 v2, 0x20

    if-ne v1, v2, :cond_2c4

    const/high16 v14, 0x60000000

    goto :goto_2a5

    .line 2300
    :cond_2c4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported big endian PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29f

    .line 2310
    :pswitch_2e1
    iget v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2ee

    move-object v1, v10

    move-object v2, v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v14, 0x4

    goto/16 :goto_449

    .line 2315
    :cond_2ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported floating point PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29f

    .line 2199
    :pswitch_30b
    const-string v16, "video/x-unknown"

    goto/16 :goto_23c

    :pswitch_30f
    move-object/from16 v16, v9

    goto/16 :goto_23c

    .line 2159
    :pswitch_313
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_319

    move-object v1, v10

    goto :goto_31d

    :cond_319
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2160
    :goto_31d
    const-string v16, "video/x-vnd.on2.vp9"

    goto/16 :goto_236

    .line 2156
    :pswitch_321
    const-string v16, "video/x-vnd.on2.vp8"

    goto/16 :goto_23c

    .line 2163
    :pswitch_325
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_32b

    move-object v1, v10

    goto :goto_32f

    :cond_32b
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 2164
    :goto_32f
    const-string v16, "video/av01"

    goto/16 :goto_236

    .line 2246
    :pswitch_333
    const-string v16, "audio/vnd.dts"

    goto/16 :goto_23c

    .line 2235
    :pswitch_337
    const-string v16, "audio/ac3"

    goto/16 :goto_23c

    .line 2217
    :pswitch_33b
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2218
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v2}, Lio/bidmachine/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Lio/bidmachine/media3/extractor/AacUtil$Config;

    move-result-object v2

    .line 2221
    iget v4, v2, Lio/bidmachine/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2222
    iget v4, v2, Lio/bidmachine/media3/extractor/AacUtil$Config;->channelCount:I

    iput v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2223
    iget-object v2, v2, Lio/bidmachine/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 2224
    const-string v16, "audio/mp4a-latm"

    goto/16 :goto_237

    .line 2249
    :pswitch_359
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_23c

    .line 2335
    :pswitch_35d
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v16, v8

    goto/16 :goto_236

    .line 2177
    :pswitch_36b
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lio/bidmachine/media3/extractor/AvcConfig;->parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/AvcConfig;

    move-result-object v1

    .line 2178
    iget-object v2, v1, Lio/bidmachine/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 2179
    iget v4, v1, Lio/bidmachine/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2180
    iget-object v1, v1, Lio/bidmachine/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 2181
    const-string v16, "video/avc"

    goto/16 :goto_265

    :pswitch_386
    const/4 v1, 0x4

    .line 2343
    new-array v2, v1, [B

    .line 2344
    iget-object v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2345
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v16, v7

    :goto_399
    move-object v2, v10

    goto/16 :goto_238

    :pswitch_39c
    const/4 v5, 0x0

    .line 2190
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2191
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Lio/bidmachine/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 2192
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 2193
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto :goto_399

    :pswitch_3b7
    const/4 v5, 0x0

    .line 2232
    const-string v16, "audio/mpeg"

    :goto_3ba
    move-object v1, v10

    move-object v2, v1

    const/16 v6, 0x1000

    goto/16 :goto_227

    :pswitch_3c0
    const/4 v5, 0x0

    .line 2228
    const-string v16, "audio/mpeg-L2"

    goto :goto_3ba

    :pswitch_3c4
    const/4 v5, 0x0

    .line 2203
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v1

    .line 2204
    const-string v16, "audio/vorbis"

    const/16 v6, 0x2000

    move-object v2, v10

    goto/16 :goto_227

    :pswitch_3d6
    const/4 v5, 0x0

    .line 2241
    new-instance v1, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    .line 2242
    const-string v16, "audio/true-hd"

    move-object v1, v10

    move-object v2, v1

    goto/16 :goto_238

    :pswitch_3e4
    const/4 v5, 0x0

    .line 2256
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_425

    .line 2257
    iget v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_420

    .line 2261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41a
    move-object v1, v10

    move-object v2, v1

    move-object/from16 v16, v14

    goto/16 :goto_238

    :cond_420
    move v14, v1

    move-object v1, v10

    move-object v2, v1

    goto/16 :goto_2a8

    .line 2270
    :cond_425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41a

    :pswitch_43a
    const/4 v5, 0x0

    .line 2173
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_441

    move-object v1, v10

    goto :goto_445

    :cond_441
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2174
    :goto_445
    const-string v16, "video/mp4v-es"

    goto/16 :goto_399

    .line 2352
    :goto_449
    iget-object v4, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v4, :cond_45e

    .line 2354
    new-instance v4, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-direct {v4, v15}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 2355
    invoke-static {v4}, Lio/bidmachine/media3/extractor/DolbyVisionConfig;->parse(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/DolbyVisionConfig;

    move-result-object v4

    if-eqz v4, :cond_45e

    .line 2357
    iget-object v2, v4, Lio/bidmachine/media3/extractor/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 2358
    const-string v16, "video/dolby-vision"

    :cond_45e
    move-object/from16 v4, v16

    .line 2363
    iget-boolean v15, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    .line 2364
    iget-boolean v3, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v3, :cond_468

    const/4 v3, 0x2

    goto :goto_469

    :cond_468
    move v3, v5

    :goto_469
    or-int/2addr v3, v15

    .line 2367
    new-instance v15, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v15}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 2370
    invoke-static {v4}, Lio/bidmachine/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_487

    .line 2372
    iget v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2373
    invoke-virtual {v15, v5}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2374
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 2375
    invoke-virtual {v5, v14}, Lio/bidmachine/media3/common/Format$Builder;->setPcmEncoding(I)Lio/bidmachine/media3/common/Format$Builder;

    const/4 v5, 0x1

    goto/16 :goto_5ae

    .line 2376
    :cond_487
    invoke-static {v4}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_581

    .line 2378
    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v7, :cond_4a3

    .line 2379
    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_498

    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_498
    iput v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    .line 2380
    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v7, v8, :cond_4a0

    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_4a0
    iput v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_4a4

    :cond_4a3
    const/4 v8, -0x1

    .line 2383
    :goto_4a4
    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v7, v8, :cond_4b6

    iget v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v9, v8, :cond_4b6

    .line 2384
    iget v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int/2addr v11, v7

    int-to-float v7, v11

    iget v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int/2addr v11, v9

    int-to-float v9, v11

    div-float/2addr v7, v9

    goto :goto_4b8

    :cond_4b6
    const/high16 v7, -0x40800000    # -1.0f

    .line 2387
    :goto_4b8
    iget-boolean v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v9, :cond_4eb

    .line 2388
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v9

    .line 2389
    new-instance v10, Lio/bidmachine/media3/common/ColorInfo$Builder;

    invoke-direct {v10}, Lio/bidmachine/media3/common/ColorInfo$Builder;-><init>()V

    iget v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    .line 2391
    invoke-virtual {v10, v11}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorSpace(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v10

    iget v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    .line 2392
    invoke-virtual {v10, v11}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorRange(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v10

    iget v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    .line 2393
    invoke-virtual {v10, v11}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v10

    .line 2394
    invoke-virtual {v10, v9}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setHdrStaticInfo([B)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v9

    iget v10, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    .line 2395
    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setLumaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v9

    iget v10, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    .line 2396
    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setChromaBitdepth(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v9

    .line 2397
    invoke-virtual {v9}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v10

    .line 2401
    :cond_4eb
    iget-object v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v9, :cond_50b

    invoke-static {}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v9

    iget-object v11, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50b

    .line 2402
    invoke-static {}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2404
    :cond_50b
    iget v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v9, :cond_55b

    iget v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v11, 0x0

    .line 2405
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_55b

    iget v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2406
    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_55b

    .line 2408
    iget v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    invoke-static {v9, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_529

    goto :goto_55c

    .line 2410
    :cond_529
    iget v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_536

    const/16 v5, 0x5a

    goto :goto_55c

    .line 2412
    :cond_536
    iget v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v9, -0x3ccc0000    # -180.0f

    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_558

    iget v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v9, 0x43340000    # 180.0f

    .line 2413
    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_54b

    goto :goto_558

    .line 2415
    :cond_54b
    iget v5, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/high16 v9, -0x3d4c0000    # -90.0f

    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_55b

    const/16 v5, 0x10e

    goto :goto_55c

    :cond_558
    :goto_558
    const/16 v5, 0xb4

    goto :goto_55c

    :cond_55b
    move v5, v8

    .line 2419
    :goto_55c
    iget v8, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2420
    invoke-virtual {v15, v8}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v8

    iget v9, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2421
    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v8

    .line 2422
    invoke-virtual {v8, v7}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    .line 2423
    invoke-virtual {v7, v5}, Lio/bidmachine/media3/common/Format$Builder;->setRotationDegrees(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    iget-object v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2424
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/Format$Builder;->setProjectionData([B)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    iget v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2425
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/Format$Builder;->setStereoMode(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    .line 2426
    invoke-virtual {v5, v10}, Lio/bidmachine/media3/common/Format$Builder;->setColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/Format$Builder;

    const/4 v5, 0x2

    goto :goto_5ae

    .line 2427
    :cond_581
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ad

    .line 2428
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ad

    .line 2429
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ad

    .line 2430
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ad

    .line 2431
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5ad

    .line 2432
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a6

    goto :goto_5ad

    .line 2435
    :cond_5a6
    const-string v1, "Unexpected MIME type."

    invoke-static {v1, v10}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_5ad
    :goto_5ad
    const/4 v5, 0x3

    .line 2439
    :goto_5ae
    iget-object v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v7, :cond_5c3

    invoke-static {}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5c3

    .line 2440
    iget-object v7, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    :cond_5c3
    move/from16 v7, p2

    .line 2445
    invoke-virtual {v15, v7}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    .line 2446
    iget-boolean v8, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->isWebm:Z

    if-eqz v8, :cond_5d0

    const-string v8, "video/webm"

    goto :goto_5d2

    :cond_5d0
    const-string v8, "video/x-matroska"

    :goto_5d2
    invoke-virtual {v7, v8}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v7

    .line 2447
    invoke-virtual {v7, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    .line 2448
    invoke-virtual {v4, v6}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    iget-object v6, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 2449
    invoke-virtual {v4, v6}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v4

    .line 2450
    invoke-virtual {v4, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSelectionFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 2451
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 2452
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    .line 2453
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 2454
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    .line 2456
    iget v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v5}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 2457
    invoke-interface {v2, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void

    :sswitch_data_608
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1d2
        -0x7ce7f3b0 -> :sswitch_1c6
        -0x76567dc0 -> :sswitch_1ba
        -0x6a615338 -> :sswitch_1ae
        -0x672350af -> :sswitch_1a2
        -0x585f4fce -> :sswitch_196
        -0x585f4fcd -> :sswitch_18a
        -0x51dc40b2 -> :sswitch_17e
        -0x37a9c464 -> :sswitch_171
        -0x2016c535 -> :sswitch_163
        -0x2016c4e5 -> :sswitch_155
        -0x19552dbd -> :sswitch_147
        -0x1538b2ba -> :sswitch_139
        0x3c02325 -> :sswitch_12b
        0x3c02353 -> :sswitch_11d
        0x3c030c5 -> :sswitch_10f
        0x4e81333 -> :sswitch_102
        0x4e86155 -> :sswitch_f4
        0x4e86156 -> :sswitch_e6
        0x5e8da3e -> :sswitch_d8
        0x1a8350d6 -> :sswitch_ca
        0x2056f406 -> :sswitch_bc
        0x25e26ee2 -> :sswitch_ae
        0x2b45174d -> :sswitch_a0
        0x2b453ce4 -> :sswitch_93
        0x2c0618eb -> :sswitch_86
        0x32fdf009 -> :sswitch_79
        0x3e4ca2d8 -> :sswitch_6c
        0x54c61e47 -> :sswitch_5f
        0x6bd6c624 -> :sswitch_52
        0x7446132a -> :sswitch_45
        0x7446b0a6 -> :sswitch_38
        0x744ad97d -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_68e
    .packed-switch 0x0
        :pswitch_43a
        :pswitch_43a
        :pswitch_3e4
        :pswitch_3d6
        :pswitch_3c4
        :pswitch_3c0
        :pswitch_3b7
        :pswitch_39c
        :pswitch_386
        :pswitch_43a
        :pswitch_36b
        :pswitch_35d
        :pswitch_359
        :pswitch_33b
        :pswitch_337
        :pswitch_333
        :pswitch_325
        :pswitch_321
        :pswitch_313
        :pswitch_30f
        :pswitch_30b
        :pswitch_333
        :pswitch_2e1
        :pswitch_2ab
        :pswitch_27b
        :pswitch_269
        :pswitch_24c
        :pswitch_247
        :pswitch_242
        :pswitch_23f
        :pswitch_23a
        :pswitch_22a
        :pswitch_1e7
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .registers 4

    .line 2463
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_b

    .line 2464
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    :cond_b
    return-void
.end method

.method public reset()V
    .registers 2

    .line 2470
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_7

    .line 2471
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->reset()V

    :cond_7
    return-void
.end method

.method public final samplesHaveSupplementalData(Z)Z
    .registers 4

    .line 2481
    const-string v0, "A_OPUS"

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return p1

    .line 2487
    :cond_b
    iget p1, p0, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez p1, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.media3.extractor.mkv.MatroskaExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.mkv.MatroskaExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor$$ExternalSyntheticLambda0;
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
    invoke-static {}, Lio/bidmachine/media3/extractor/mkv/MatroskaExtractor;->$r8$lambda$nduLwn9WT2z6xT9Fy1FFDiSV7pE()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
