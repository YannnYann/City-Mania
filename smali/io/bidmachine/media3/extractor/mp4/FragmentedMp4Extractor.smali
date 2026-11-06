###### Class io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor (io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor)
.class public Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
    }
.end annotation


# static fields
.field public static final EMSG_FORMAT:Lio/bidmachine/media3/common/Format;

.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B


# instance fields
.field public final additionalEmsgTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

.field public final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field public currentTrackBundle:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field public durationUs:J

.field public emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

.field public endOfMdatPosition:J

.field public final eventMessageEncoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageEncoder;

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public final flags:I

.field public haveOutputSeekMap:Z

.field public isSampleDependedOn:Z

.field public lastSniffFailures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation
.end field

.field public final nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public parserState:I

.field public pendingMetadataSampleBytes:I

.field public final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pendingSeekTimeUs:J

.field public processSeiNalUnitPayload:Z

.field public final reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleSize:I

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final scratchBytes:[B

.field public segmentIndexEarliestPresentationTimeUs:J

.field public final sideloadedTrack:Lio/bidmachine/media3/extractor/mp4/Track;

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public final timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

.field public final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nONidW6l7VzDZMLodkLsy80zU9k(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    .line 430
    iget-object p0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 430
    invoke-static {p1, p2, p3, p0}, Lio/bidmachine/media3/extractor/CeaUtil;->consume(JLio/bidmachine/media3/common/util/ParsableByteArray;[Lio/bidmachine/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7wgyC4uECHBLis5q1eK7EJcY8c()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 168
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    sget-object v1, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 166
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    .line 178
    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 182
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 183
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lio/bidmachine/media3/common/Format;

    return-void

    :array_22
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V
    .registers 10

    .line 306
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 301
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;ILio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/mp4/Track;Ljava/util/List;Lio/bidmachine/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;ILio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/mp4/Track;Ljava/util/List;Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;",
            "I",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            "Lio/bidmachine/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 405
    iput p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 406
    iput-object p3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 407
    iput-object p4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lio/bidmachine/media3/extractor/mp4/Track;

    .line 408
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 409
    iput-object p6, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 410
    new-instance p1, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageEncoder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 411
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 412
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    sget-object p3, Lio/bidmachine/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 413
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 414
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 415
    new-array p1, p2, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    .line 416
    new-instance p2, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 417
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 418
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 419
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 420
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 421
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 422
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 423
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 424
    sget-object p1, Lio/bidmachine/media3/extractor/ExtractorOutput;->PLACEHOLDER:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 p1, 0x0

    .line 425
    new-array p2, p1, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 426
    new-array p1, p1, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 427
    new-instance p1, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    new-instance p2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;-><init>(Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    return-void
.end method

.method private canReadWithinGopSampleDependencies(Lio/bidmachine/media3/common/Format;)Z
    .registers 5

    .line 1738
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 1739
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_13

    return v1

    :cond_13
    return v2

    .line 1741
    :cond_14
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "video/hevc"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1742
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method public static checkNonNegative(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    if-ltz p0, :cond_3

    return p0

    .line 1286
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static codecsToParseWithinGopSampleDependenciesAsFlags(I)I
    .registers 2

    .line 0
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_f

    or-int/lit16 p0, v0, 0x80

    return p0

    :cond_f
    return v0
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 538
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public static getDrmInitDataFromAtoms(Ljava/util/List;)Lio/bidmachine/media3/common/DrmInitData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/container/Mp4Box$LeafBox;",
            ">;)",
            "Lio/bidmachine/media3/common/DrmInitData;"
        }
    .end annotation

    .line 1809
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_7
    if-ge v2, v0, :cond_3e

    .line 1811
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 1812
    iget v5, v4, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_3b

    if-nez v3, :cond_1d

    .line 1814
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    :cond_1d
    iget-object v4, v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 1817
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_31

    .line 1819
    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 1821
    :cond_31
    new-instance v6, Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3e
    if-nez v3, :cond_41

    return-object v1

    .line 1825
    :cond_41
    new-instance p0, Lio/bidmachine/media3/common/DrmInitData;

    invoke-direct {p0, v3}, Lio/bidmachine/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static getNextTrackBundle(Landroid/util/SparseArray;)Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1786
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_3d

    .line 1788
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1789
    invoke-static {v5}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-nez v6, :cond_21

    iget v6, v5, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v7, v5, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget v7, v7, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eq v6, v7, :cond_3a

    .line 1791
    :cond_21
    invoke-static {v5}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z

    move-result v6

    if-eqz v6, :cond_30

    iget v6, v5, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget v7, v7, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_30

    goto :goto_3a

    .line 1795
    :cond_30
    invoke-virtual {v5}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_3a

    move-object v1, v5

    move-wide v2, v6

    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_3d
    return-object v1
.end method

.method public static isEdtsListDurationForEntireMediaTimeline(Lio/bidmachine/media3/extractor/mp4/Track;)Z
    .registers 13

    .line 1171
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp4/Track;->editListMediaTimes:[J

    if-nez v2, :cond_e

    goto :goto_35

    .line 1176
    :cond_e
    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_17

    return v3

    :cond_17
    const-wide/32 v6, 0xf4240

    .line 1179
    iget-wide v8, p0, Lio/bidmachine/media3/extractor/mp4/Track;->movieTimescale:J

    .line 1180
    invoke-static/range {v4 .. v9}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 1182
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v6, v0, v1

    const-wide/32 v8, 0xf4240

    iget-wide v10, p0, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    .line 1183
    invoke-static/range {v6 .. v11}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1184
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/mp4/Track;->durationUs:J

    cmp-long p0, v4, v6

    if-ltz p0, :cond_35

    return v3

    :cond_35
    :goto_35
    return v1
.end method

.method public static parseMehd(Lio/bidmachine/media3/common/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    .line 912
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 913
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 914
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    if-nez v0, :cond_14

    .line 915
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseMoof(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/container/Mp4Box$ContainerBox;",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 927
    iget-object v2, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    .line 929
    iget v3, v2, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_1b

    .line 930
    invoke-static {v2, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public static parseSaio(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1078
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1079
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1080
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_14

    .line 1082
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1085
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    if-ne v0, v3, :cond_2f

    .line 1092
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    .line 1093
    iget-wide v1, p1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v0, :cond_27

    .line 1094
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_2b

    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_2b
    add-long/2addr v1, v3

    iput-wide v1, p1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    return-void

    .line 1088
    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseSaiz(Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1033
    iget p0, p0, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    const/16 v0, 0x8

    .line 1034
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1035
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1036
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    .line 1038
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1040
    :cond_16
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1042
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1043
    iget v3, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-gt v1, v3, :cond_52

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    .line 1054
    iget-object v0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    move v4, v3

    move v5, v4

    :goto_29
    if-ge v4, v1, :cond_45

    .line 1056
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_34

    move v6, v2

    goto :goto_35

    :cond_34
    move v6, v3

    .line 1058
    :goto_35
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_3a
    if-le v0, p0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    :goto_3e
    mul-int v5, v0, v1

    .line 1063
    iget-object p0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1065
    :cond_45
    iget-object p0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_51

    .line 1067
    invoke-virtual {p2, v5}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    :cond_51
    return-void

    .line 1044
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Saiz sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseSampleGroups(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Ljava/lang/String;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move v4, v3

    .line 1350
    :goto_9
    iget-object v7, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_44

    .line 1351
    iget-object v7, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 1352
    iget-object v8, v7, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1353
    iget v7, v7, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_32

    .line 1354
    invoke-virtual {v8, v11}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1355
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_41

    move-object v5, v8

    goto :goto_41

    :cond_32
    const v9, 0x73677064

    if-ne v7, v9, :cond_41

    .line 1359
    invoke-virtual {v8, v11}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1360
    invoke-virtual {v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-ne v7, v10, :cond_41

    move-object v6, v8

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_44
    if-eqz v5, :cond_e4

    if-nez v6, :cond_4a

    goto/16 :goto_e4

    :cond_4a
    const/16 v0, 0x8

    .line 1369
    invoke-virtual {v5, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1370
    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v4

    const/4 v7, 0x4

    .line 1371
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_61

    .line 1373
    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1375
    :cond_61
    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, v8, :cond_dd

    .line 1380
    invoke-virtual {v6, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1381
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    .line 1382
    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-ne v0, v8, :cond_89

    .line 1384
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_82

    goto :goto_8f

    .line 1385
    :cond_82
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_89
    const/4 v4, 0x2

    if-lt v0, v4, :cond_8f

    .line 1389
    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1391
    :cond_8f
    :goto_8f
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_d6

    .line 1397
    invoke-virtual {v6, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1398
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    .line 1401
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v8, :cond_ae

    move v10, v8

    goto :goto_af

    :cond_ae
    move v10, v3

    :goto_af
    if-nez v10, :cond_b2

    goto :goto_e4

    .line 1405
    :cond_b2
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    const/16 v0, 0x10

    .line 1406
    new-array v13, v0, [B

    .line 1407
    invoke-virtual {v6, v13, v3, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    if-nez v12, :cond_c8

    .line 1410
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1411
    new-array v2, v0, [B

    .line 1412
    invoke-virtual {v6, v2, v3, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :cond_c8
    move-object/from16 v16, v2

    .line 1414
    iput-boolean v8, v1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1415
    new-instance v9, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v9, v1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    return-void

    .line 1392
    :cond_d6
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 1376
    :cond_dd
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_e4
    :goto_e4
    return-void
.end method

.method public static parseSenc(Lio/bidmachine/media3/common/util/ParsableByteArray;ILio/bidmachine/media3/extractor/mp4/TrackFragment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1315
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1316
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1317
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_5c

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    move p1, v0

    .line 1326
    :goto_19
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez v1, :cond_27

    .line 1329
    iget-object p0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget p1, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 1331
    :cond_27
    iget v2, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v2, :cond_3b

    .line 1340
    iget-object v2, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1341
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 1342
    invoke-virtual {p2, p0}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    return-void

    .line 1332
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Senc sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 1321
    :cond_5c
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseSenc(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1310
    invoke-static {p0, v0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lio/bidmachine/media3/common/util/ParsableByteArray;ILio/bidmachine/media3/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method public static parseSidx(Lio/bidmachine/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lio/bidmachine/media3/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1436
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1437
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1438
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v1

    const/4 v2, 0x4

    .line 1440
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1441
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v7

    if-nez v1, :cond_25

    .line 1445
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1446
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    :goto_21
    add-long v5, p1, v5

    move-wide v9, v5

    goto :goto_2e

    .line 1448
    :cond_25
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 1449
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    goto :goto_21

    :goto_2e
    const-wide/32 v5, 0xf4240

    .line 1452
    invoke-static/range {v3 .. v8}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    const/4 v1, 0x2

    .line 1454
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1456
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1457
    new-array v13, v1, [I

    .line 1458
    new-array v14, v1, [J

    .line 1459
    new-array v15, v1, [J

    .line 1460
    new-array v5, v1, [J

    const/4 v6, 0x0

    move-wide/from16 v16, v9

    move-wide/from16 v18, v11

    move v9, v6

    :goto_4b
    if-ge v9, v1, :cond_88

    .line 1465
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v6

    const/high16 v10, -0x80000000

    and-int/2addr v10, v6

    if-nez v10, :cond_80

    .line 1472
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v20

    const v10, 0x7fffffff

    and-int/2addr v6, v10

    .line 1474
    aput v6, v13, v9

    .line 1475
    aput-wide v16, v14, v9

    .line 1479
    aput-wide v18, v5, v9

    add-long v3, v3, v20

    move-object v10, v5

    const-wide/32 v5, 0xf4240

    .line 1481
    invoke-static/range {v3 .. v8}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    .line 1482
    aget-wide v5, v10, v9

    sub-long v5, v18, v5

    aput-wide v5, v15, v9

    .line 1484
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1485
    aget v5, v13, v9

    int-to-long v5, v5

    add-long v16, v16, v5

    add-int/lit8 v9, v9, 0x1

    move-object v5, v10

    goto :goto_4b

    .line 1469
    :cond_80
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_88
    move-object v10, v5

    .line 1489
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/extractor/ChunkIndex;

    invoke-direct {v1, v13, v14, v15, v10}, Lio/bidmachine/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    .line 1488
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static parseTfdt(Lio/bidmachine/media3/common/util/ParsableByteArray;)J
    .registers 3

    const/16 v0, 0x8

    .line 1161
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1162
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1163
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1164
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    return-wide v0

    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseTfhd(Lio/bidmachine/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;Z)",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1112
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1113
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1114
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v0

    .line 1115
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    if-eqz p2, :cond_1b

    const/4 p2, 0x0

    .line 1118
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :goto_18
    check-cast p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto :goto_20

    :cond_1b
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_18

    :goto_20
    if-nez p1, :cond_24

    const/4 p0, 0x0

    return-object p0

    :cond_24
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_32

    .line 1123
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    .line 1124
    iget-object p2, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iput-wide v1, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->dataPosition:J

    .line 1125
    iput-wide v1, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1128
    :cond_32
    iget-object p2, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3f

    .line 1131
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_41

    .line 1132
    :cond_3f
    iget v1, p2, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    :goto_41
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4a

    .line 1135
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    goto :goto_4c

    .line 1136
    :cond_4a
    iget v2, p2, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->duration:I

    :goto_4c
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_55

    .line 1139
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    goto :goto_57

    .line 1140
    :cond_55
    iget v3, p2, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->size:I

    :goto_57
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_60

    .line 1143
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    goto :goto_62

    .line 1144
    :cond_60
    iget p0, p2, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->flags:I

    .line 1145
    :goto_62
    iget-object p2, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    new-instance v0, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v2, v3, p0}, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->header:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method public static parseTraf(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/container/Mp4Box$ContainerBox;",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 943
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 944
    iget-object v0, v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lio/bidmachine/media3/common/util/ParsableByteArray;Landroid/util/SparseArray;Z)Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    if-nez p1, :cond_17

    goto/16 :goto_ae

    .line 949
    :cond_17
    iget-object p2, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    .line 950
    iget-wide v0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 951
    iget-boolean v2, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 952
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    const/4 v3, 0x1

    .line 953
    invoke-static {p1, v3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$002(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z

    const v4, 0x74666474

    .line 954
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_3c

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_3c

    .line 956
    iget-object v0, v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lio/bidmachine/media3/common/util/ParsableByteArray;)J

    move-result-wide v0

    iput-wide v0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 957
    iput-boolean v3, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    goto :goto_40

    .line 959
    :cond_3c
    iput-wide v0, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 960
    iput-boolean v2, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    .line 963
    :goto_40
    invoke-static {p0, p1, p3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V

    .line 966
    iget-object p1, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object p3, p2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->header:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    .line 968
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    iget p3, p3, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 967
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    const p3, 0x7361697a

    .line 970
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object p3

    if-eqz p3, :cond_69

    .line 972
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    iget-object p3, p3, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0, p3, p2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V

    :cond_69
    const p3, 0x7361696f

    .line 975
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object p3

    if-eqz p3, :cond_77

    .line 977
    iget-object p3, p3, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p3, p2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V

    :cond_77
    const p3, 0x73656e63

    .line 980
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object p3

    if-eqz p3, :cond_85

    .line 982
    iget-object p3, p3, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p3, p2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V

    :cond_85
    if-eqz p1, :cond_8a

    .line 985
    iget-object p1, p1, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_8b

    :cond_8a
    const/4 p1, 0x0

    :goto_8b
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseSampleGroups(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Ljava/lang/String;Lio/bidmachine/media3/extractor/mp4/TrackFragment;)V

    .line 987
    iget-object p1, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_95
    if-ge p3, p1, :cond_ae

    .line 989
    iget-object v0, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 990
    iget v1, v0, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_ab

    .line 991
    iget-object v0, v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0, p2, p4}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;[B)V

    :cond_ab
    add-int/lit8 p3, p3, 0x1

    goto :goto_95

    :cond_ae
    :goto_ae
    return-void
.end method

.method public static parseTrex(Lio/bidmachine/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 894
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 895
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 896
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 897
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 898
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 899
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 902
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    .line 901
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseTrun(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILio/bidmachine/media3/common/util/ParsableByteArray;I)I
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    .line 1204
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1205
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1206
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxFlags(I)I

    move-result v1

    .line 1208
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    .line 1209
    iget-object v4, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    .line 1210
    iget-object v5, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->header:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v5}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    .line 1212
    iget-object v6, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    aput v7, v6, p1

    .line 1213
    iget-object v6, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v7, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v7, v6, p1

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_39

    .line 1215
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_39
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    if-eqz v6, :cond_40

    const/4 v6, 0x1

    goto :goto_41

    :cond_40
    move v6, v7

    .line 1219
    :goto_41
    iget v9, v5, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->flags:I

    if-eqz v6, :cond_49

    .line 1221
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    :cond_49
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_4f

    const/4 v10, 0x1

    goto :goto_50

    :cond_4f
    move v10, v7

    :goto_50
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_56

    const/4 v11, 0x1

    goto :goto_57

    :cond_56
    move v11, v7

    :goto_57
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5d

    const/4 v12, 0x1

    goto :goto_5e

    :cond_5d
    move v12, v7

    :goto_5e
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_64

    const/4 v1, 0x1

    goto :goto_65

    :cond_64
    move v1, v7

    .line 1235
    :goto_65
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->isEdtsListDurationForEntireMediaTimeline(Lio/bidmachine/media3/extractor/mp4/Track;)Z

    move-result v13

    if-eqz v13, :cond_76

    .line 1236
    iget-object v13, v3, Lio/bidmachine/media3/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v13}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    goto :goto_78

    :cond_76
    const-wide/16 v14, 0x0

    .line 1239
    :goto_78
    iget-object v13, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 1240
    iget-object v7, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->samplePresentationTimesUs:[J

    const/16 v16, 0x1

    .line 1241
    iget-object v8, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move/from16 v17, v1

    .line 1243
    iget v1, v3, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8e

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8e

    move/from16 v1, v16

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    .line 1247
    :goto_8f
    iget-object v2, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trunLength:[I

    aget v2, v2, p1

    add-int v2, p4, v2

    move/from16 v24, v6

    move-object/from16 v25, v7

    .line 1248
    iget-wide v6, v3, Lio/bidmachine/media3/extractor/mp4/Track;->timescale:J

    move-wide/from16 v22, v6

    .line 1249
    iget-wide v6, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    move/from16 v3, p4

    :goto_a1
    if-ge v3, v2, :cond_128

    if-eqz v10, :cond_ac

    .line 1253
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v18

    move/from16 p2, v1

    goto :goto_b2

    :cond_ac
    move/from16 p2, v1

    iget v1, v5, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v18, v1

    :goto_b2
    invoke-static/range {v18 .. v18}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v1

    if-eqz v11, :cond_bf

    .line 1255
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v18

    move/from16 p1, v2

    goto :goto_c5

    :cond_bf
    move/from16 p1, v2

    iget v2, v5, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v18, v2

    :goto_c5
    invoke-static/range {v18 .. v18}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->checkNonNegative(I)I

    move-result v2

    if-eqz v12, :cond_d4

    .line 1258
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v18

    move/from16 p4, v2

    move/from16 v2, v18

    goto :goto_e0

    :cond_d4
    if-nez v3, :cond_dc

    if-eqz v24, :cond_dc

    move/from16 p4, v2

    move v2, v9

    goto :goto_e0

    :cond_dc
    move/from16 p4, v2

    .line 1259
    iget v2, v5, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->flags:I

    :goto_e0
    if-eqz v17, :cond_ed

    .line 1267
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v18

    move/from16 v26, v2

    move/from16 v2, v18

    :goto_ea
    move/from16 v27, v3

    goto :goto_f1

    :cond_ed
    move/from16 v26, v2

    const/4 v2, 0x0

    goto :goto_ea

    :goto_f1
    int-to-long v2, v2

    add-long/2addr v2, v6

    sub-long v18, v2, v14

    const-wide/32 v20, 0xf4240

    .line 1271
    invoke-static/range {v18 .. v23}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v2

    aput-wide v2, v25, v27

    move-wide/from16 v18, v2

    .line 1272
    iget-boolean v2, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTimeIncludesMoov:Z

    if-nez v2, :cond_10c

    .line 1273
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-wide v2, v2, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    add-long v2, v18, v2

    aput-wide v2, v25, v27

    .line 1275
    :cond_10c
    aput p4, v13, v27

    shr-int/lit8 v2, v26, 0x10

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_11b

    if-eqz p2, :cond_118

    if-nez v27, :cond_11b

    :cond_118
    move/from16 v2, v16

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    .line 1276
    :goto_11c
    aput-boolean v2, v8, v27

    int-to-long v1, v1

    add-long/2addr v6, v1

    add-int/lit8 v3, v27, 0x1

    move/from16 v2, p1

    move/from16 v1, p2

    goto/16 :goto_a1

    :cond_128
    move/from16 p1, v2

    .line 1280
    iput-wide v6, v4, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    return p1
.end method

.method public static parseTruns(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1000
    iget-object p0, p0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    .line 1001
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_a
    const v5, 0x7472756e

    if-ge v2, v0, :cond_2c

    .line 1003
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 1004
    iget v7, v6, Lio/bidmachine/media3/container/Mp4Box;->type:I

    if-ne v7, v5, :cond_29

    .line 1005
    iget-object v5, v6, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v6, 0xc

    .line 1006
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1007
    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    if-lez v5, :cond_29

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1014
    :cond_2c
    iput v1, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1015
    iput v1, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1016
    iput v1, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1017
    iget-object v2, p1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->initTables(II)V

    move v2, v1

    move v3, v2

    :goto_39
    if-ge v1, v0, :cond_52

    .line 1022
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 1023
    iget v6, v4, Lio/bidmachine/media3/container/Mp4Box;->type:I

    if-ne v6, v5, :cond_4f

    add-int/lit8 v6, v2, 0x1

    .line 1024
    iget-object v4, v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1025
    invoke-static {p1, v2, p2, v4, v3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IILio/bidmachine/media3/common/util/ParsableByteArray;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_52
    return-void
.end method

.method public static parseUuid(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/mp4/TrackFragment;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1295
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 1296
    invoke-virtual {p0, p2, v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1299
    sget-object v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_14

    return-void

    .line 1306
    :cond_14
    invoke-static {p0, v1, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lio/bidmachine/media3/common/util/ParsableByteArray;ILio/bidmachine/media3/extractor/mp4/TrackFragment;)V

    return-void
.end method

.method private processAtomEnded(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 650
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    iget-wide v0, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_22

    .line 651
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 653
    :cond_22
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method private readAtomHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2c

    .line 544
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    .line 547
    :cond_15
    iput v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 548
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 549
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 550
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 553
    :cond_2c
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4b

    .line 556
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 557
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 558
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_7c

    :cond_4b
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_7c

    .line 562
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6d

    .line 563
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 564
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    iget-wide v4, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->endPosition:J

    :cond_6d
    cmp-long v0, v4, v6

    if-eqz v0, :cond_7c

    .line 567
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 571
    :cond_7c
    :goto_7c
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_157

    .line 576
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 577
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_99

    if-ne v0, v6, :cond_ab

    .line 578
    :cond_99
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_ab

    .line 580
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance v8, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    iget-wide v9, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v8, v9, v10, v4, v5}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v0, v8}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 581
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 585
    :cond_ab
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    if-ne v0, v7, :cond_cb

    .line 587
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v7, v2

    :goto_b6
    if-ge v7, v0, :cond_cb

    .line 589
    iget-object v8, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    .line 590
    iput-wide v4, v8, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->atomPosition:J

    .line 591
    iput-wide v4, v8, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 592
    iput-wide v4, v8, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->dataPosition:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 596
    :cond_cb
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_db

    .line 597
    iput-object v7, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 598
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    const/4 p1, 0x2

    .line 599
    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v3

    .line 603
    :cond_db
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 604
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 605
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v2, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    iget v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v4, v0, v1}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 606
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_104

    .line 607
    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_14f

    .line 610
    :cond_104
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_14f

    .line 612
    :cond_108
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_145

    .line 613
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_13e

    .line 617
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_137

    .line 621
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 622
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 624
    iput v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_14f

    .line 618
    :cond_137
    const-string p1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 614
    :cond_13e
    const-string p1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {p1}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 626
    :cond_145
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_150

    .line 630
    iput-object v7, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 631
    iput v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    :goto_14f
    return v3

    .line 627
    :cond_150
    const-string p1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 572
    :cond_157
    const-string p1, "Atom size less than header length (unsupported)."

    invoke-static {p1}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2

    .line 0
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_30

    const v0, 0x7472616b

    if-eq p0, v0, :cond_30

    const v0, 0x6d646961

    if-eq p0, v0, :cond_30

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_30

    const v0, 0x7374626c

    if-eq p0, v0, :cond_30

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_30

    const v0, 0x74726166

    if-eq p0, v0, :cond_30

    const v0, 0x6d766578

    if-eq p0, v0, :cond_30

    const v0, 0x65647473

    if-ne p0, v0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    return p0

    :cond_30
    :goto_30
    const/4 p0, 0x1

    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2

    .line 0
    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_8f

    const v0, 0x6d646864

    if-eq p0, v0, :cond_8f

    const v0, 0x6d766864

    if-eq p0, v0, :cond_8f

    const v0, 0x73696478

    if-eq p0, v0, :cond_8f

    const v0, 0x73747364

    if-eq p0, v0, :cond_8f

    const v0, 0x73747473

    if-eq p0, v0, :cond_8f

    const v0, 0x63747473

    if-eq p0, v0, :cond_8f

    const v0, 0x73747363

    if-eq p0, v0, :cond_8f

    const v0, 0x7374737a

    if-eq p0, v0, :cond_8f

    const v0, 0x73747a32

    if-eq p0, v0, :cond_8f

    const v0, 0x7374636f

    if-eq p0, v0, :cond_8f

    const v0, 0x636f3634

    if-eq p0, v0, :cond_8f

    const v0, 0x73747373

    if-eq p0, v0, :cond_8f

    const v0, 0x74666474

    if-eq p0, v0, :cond_8f

    const v0, 0x74666864

    if-eq p0, v0, :cond_8f

    const v0, 0x746b6864

    if-eq p0, v0, :cond_8f

    const v0, 0x74726578

    if-eq p0, v0, :cond_8f

    const v0, 0x7472756e

    if-eq p0, v0, :cond_8f

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_8f

    const v0, 0x7361697a

    if-eq p0, v0, :cond_8f

    const v0, 0x7361696f

    if-eq p0, v0, :cond_8f

    const v0, 0x73656e63

    if-eq p0, v0, :cond_8f

    const v0, 0x75756964

    if-eq p0, v0, :cond_8f

    const v0, 0x73626770

    if-eq p0, v0, :cond_8f

    const v0, 0x73677064

    if-eq p0, v0, :cond_8f

    const v0, 0x656c7374

    if-eq p0, v0, :cond_8f

    const v0, 0x6d656864

    if-eq p0, v0, :cond_8f

    const v0, 0x656d7367

    if-ne p0, v0, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 p0, 0x0

    return p0

    :cond_8f
    :goto_8f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getDefaultSampleValues(Landroid/util/SparseArray;I)Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 748
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    const/4 p2, 0x0

    .line 751
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    return-object p1

    .line 753
    :cond_f
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method public getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/extractor/SniffFailure;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 14

    .line 465
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_e

    .line 466
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    .line 467
    :cond_e
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 468
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 469
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->initExtraTracks()V

    .line 470
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lio/bidmachine/media3/extractor/mp4/Track;

    if-eqz p1, :cond_51

    .line 471
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget p1, p1, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    .line 473
    invoke-interface {v1, v2, p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    new-instance v3, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lio/bidmachine/media3/extractor/mp4/Track;

    new-array v5, v2, [J

    new-array v6, v2, [I

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v11}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;-><init>(Lio/bidmachine/media3/extractor/mp4/Track;[J[II[J[IJ)V

    new-instance v1, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v1, v2, v2, v2, v2}, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v4, v4, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    .line 487
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v3, v1, v4}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    :cond_51
    return-void
.end method

.method public final initExtraTracks()V
    .registers 8

    const/4 v0, 0x2

    .line 779
    new-array v0, v0, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 781
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 782
    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    .line 784
    :goto_f
    iget v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_25

    add-int/lit8 v3, v1, 0x1

    .line 785
    iget-object v5, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v6, 0x5

    .line 786
    invoke-interface {v5, v4, v6}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v4, 0x65

    move v1, v3

    .line 788
    :cond_25
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 789
    array-length v1, v0

    move v3, v2

    :goto_31
    if-ge v3, v1, :cond_3d

    aget-object v5, v0, v3

    .line 790
    sget-object v6, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lio/bidmachine/media3/common/Format;

    invoke-interface {v5, v6}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 793
    :cond_3d
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    .line 794
    :goto_47
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v0, v0

    if-ge v2, v0, :cond_68

    .line 795
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    .line 796
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/Format;

    invoke-interface {v0, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 797
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_47

    :cond_68
    return-void
.end method

.method public modifyTrack(Lio/bidmachine/media3/extractor/mp4/Track;)Lio/bidmachine/media3/extractor/mp4/Track;
    .registers 2

    .line 0
    return-object p1
.end method

.method public final onContainerAtomRead(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 670
    iget v0, p1, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_b

    .line 671
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V

    return-void

    :cond_b
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_14

    .line 673
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V

    return-void

    .line 674
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 675
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->add(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V

    :cond_27
    return-void
.end method

.method public final onEmsgLeafAtomRead(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 803
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v2, v2

    if-nez v2, :cond_b

    goto/16 :goto_14e

    :cond_b
    const/16 v2, 0x8

    .line 806
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 807
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 808
    invoke-static {v2}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseFullBoxVersion(I)I

    move-result v2

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_74

    if-eq v2, v3, :cond_39

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 831
    :cond_39
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v10

    .line 833
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v11}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 835
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 836
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 837
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 838
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move-wide v6, v4

    :goto_6f
    move-object/from16 v16, v2

    move-object/from16 v17, v10

    goto :goto_b5

    .line 818
    :cond_74
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 819
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 820
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v15

    .line 822
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    invoke-static/range {v11 .. v16}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    .line 823
    iget-wide v8, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    cmp-long v11, v8, v4

    if-eqz v11, :cond_a0

    add-long/2addr v8, v6

    goto :goto_a1

    :cond_a0
    move-wide v8, v4

    .line 827
    :goto_a1
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    invoke-static/range {v11 .. v16}, Lio/bidmachine/media3/common/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v11

    .line 828
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    move-wide/from16 v18, v11

    move-wide/from16 v20, v13

    move-wide v12, v8

    goto :goto_6f

    .line 845
    :goto_b5
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v2, v2, [B

    .line 846
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 847
    new-instance v15, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;

    move-object/from16 v22, v2

    invoke-direct/range {v15 .. v22}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 848
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->eventMessageEncoder:Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageEncoder;

    .line 849
    invoke-virtual {v2, v15}, Lio/bidmachine/media3/extractor/metadata/emsg/EventMessageEncoder;->encode(Lio/bidmachine/media3/extractor/metadata/emsg/EventMessage;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 850
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 853
    iget-object v8, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v10, v8

    move v11, v9

    :goto_dd
    if-ge v11, v10, :cond_ea

    aget-object v14, v8, v11

    .line 854
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 855
    invoke-interface {v14, v1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_dd

    :cond_ea
    cmp-long v1, v12, v4

    if-nez v1, :cond_fe

    .line 862
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v4, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v4, v6, v7, v3, v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 865
    iget v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    return-void

    .line 866
    :cond_fe
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_116

    .line 870
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v3, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v12, v13, v9, v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 872
    iget v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    return-void

    .line 873
    :cond_116
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    if-eqz v1, :cond_130

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_130

    .line 877
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v3, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v3, v12, v13, v9, v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 879
    iget v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    return-void

    .line 882
    :cond_130
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    if-eqz v1, :cond_138

    .line 883
    invoke-virtual {v1, v12, v13}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v12

    :cond_138
    move-wide v15, v12

    .line 885
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v3, v1

    :goto_13c
    if-ge v9, v3, :cond_14e

    aget-object v14, v1, v9

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    move/from16 v18, v2

    .line 886
    invoke-interface/range {v14 .. v20}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_13c

    :cond_14e
    :goto_14e
    return-void
.end method

.method public final onLeafAtomRead(Lio/bidmachine/media3/container/Mp4Box$LeafBox;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 658
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->add(Lio/bidmachine/media3/container/Mp4Box$LeafBox;)V

    return-void

    .line 659
    :cond_14
    iget v0, p1, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_38

    .line 660
    iget-object p1, p1, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lio/bidmachine/media3/common/util/ParsableByteArray;J)Landroid/util/Pair;

    move-result-object p1

    .line 661
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 662
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    const/4 p1, 0x1

    .line 663
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    return-void

    :cond_38
    const p2, 0x656d7367

    if-ne v0, p2, :cond_42

    .line 665
    iget-object p1, p1, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    :cond_42
    return-void
.end method

.method public final onMoofContainerAtomRead(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lio/bidmachine/media3/extractor/mp4/Track;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    iget v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->scratchBytes:[B

    invoke-static {p1, v0, v1, v3, v4}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Landroid/util/SparseArray;ZI[B)V

    .line 759
    iget-object p1, p1, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 761
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_20
    if-ge v1, v0, :cond_30

    .line 763
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 767
    :cond_30
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_55

    .line 768
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_41
    if-ge v2, p1, :cond_53

    .line 770
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v0, v5, v6}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 772
    :cond_53
    iput-wide v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    :cond_55
    return-void
.end method

.method public final onMoovContainerAtomRead(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lio/bidmachine/media3/extractor/mp4/Track;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 682
    iget-object v0, p1, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    .line 685
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    .line 686
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 688
    iget-object v3, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    move v4, v1

    :goto_33
    if-ge v4, v3, :cond_68

    .line 690
    iget-object v8, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->leafChildren:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    .line 691
    iget v9, v8, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_5a

    .line 692
    iget-object v8, v8, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v8}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lio/bidmachine/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v8

    .line 693
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v11, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_65

    :cond_5a
    const v10, 0x6d656864

    if-ne v9, v10, :cond_65

    .line 695
    iget-object v5, v8, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v5}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lio/bidmachine/media3/common/util/ParsableByteArray;)J

    move-result-wide v5

    :cond_65
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 700
    :cond_68
    new-instance v4, Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Lio/bidmachine/media3/extractor/GaplessInfoHolder;-><init>()V

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_75

    move v8, v2

    goto :goto_76

    :cond_75
    move v8, v1

    :goto_76
    new-instance v10, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;)V

    const/4 v9, 0x0

    move-object v3, p1

    .line 701
    invoke-static/range {v3 .. v10}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseTraks(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/extractor/GaplessInfoHolder;JLio/bidmachine/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p1

    .line 710
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 711
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_cd

    .line 713
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    :goto_91
    if-ge v1, v0, :cond_c7

    .line 715
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 716
    iget-object v4, v3, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    .line 717
    iget-object v5, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget v6, v4, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    invoke-interface {v5, v1, v6}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v5

    .line 718
    iget-wide v6, v4, Lio/bidmachine/media3/extractor/mp4/Track;->durationUs:J

    invoke-interface {v5, v6, v7}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    .line 719
    new-instance v6, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v4, Lio/bidmachine/media3/extractor/mp4/Track;->id:I

    .line 723
    invoke-virtual {p0, v11, v7}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v7

    invoke-direct {v6, v5, v3, v7, v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;Ljava/lang/String;)V

    .line 725
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v4, Lio/bidmachine/media3/extractor/mp4/Track;->id:I

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 726
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v3, v4, Lio/bidmachine/media3/extractor/mp4/Track;->durationUs:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    .line 728
    :cond_c7
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void

    .line 730
    :cond_cd
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_d6

    goto :goto_d7

    :cond_d6
    move v2, v1

    :goto_d7
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    :goto_da
    if-ge v1, v0, :cond_fa

    .line 732
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 733
    iget-object v3, v2, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    .line 734
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v5, v3, Lio/bidmachine/media3/extractor/mp4/Track;->id:I

    .line 735
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v3, v3, Lio/bidmachine/media3/extractor/mp4/Track;->id:I

    .line 736
    invoke-virtual {p0, v11, v3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Landroid/util/SparseArray;I)Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    :cond_fa
    return-void
.end method

.method public final outputPendingMetadataSamples(J)V
    .registers 14

    .line 1754
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1755
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1756
    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1757
    iget-wide v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    .line 1758
    iget-boolean v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    if-eqz v3, :cond_1e

    add-long/2addr v1, p1

    .line 1763
    :cond_1e
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    if-eqz v3, :cond_26

    .line 1764
    invoke-virtual {v3, v1, v2}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    :cond_26
    move-wide v4, v1

    .line 1766
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v2, v1

    const/4 v3, 0x0

    move v10, v3

    :goto_2c
    if-ge v10, v2, :cond_0

    aget-object v3, v1, v10

    .line 1767
    iget v7, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    :cond_3c
    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    :cond_0
    :goto_0
    iget p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    if-eq p2, v0, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_12

    .line 529
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->readSample(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 526
    :cond_12
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 523
    :cond_16
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 517
    :cond_1a
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 518
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->flush()V

    const/4 p1, -0x1

    return p1
.end method

.method public final readAtomPayload(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 639
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    if-eqz v1, :cond_23

    .line 641
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 642
    new-instance v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v0, v2, v1}, Lio/bidmachine/media3/container/Mp4Box$LeafBox;-><init>(ILio/bidmachine/media3/common/util/ParsableByteArray;)V

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lio/bidmachine/media3/container/Mp4Box$LeafBox;J)V

    goto :goto_26

    .line 644
    :cond_23
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 646
    :goto_26
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    return-void
.end method

.method public final readEncryptionData(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v5, v1

    :goto_e
    if-ge v4, v0, :cond_31

    .line 1497
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v6, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    .line 1498
    iget-boolean v7, v6, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_2e

    iget-wide v6, v6, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_2e

    .line 1501
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v2, v6

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_31
    if-nez v5, :cond_37

    const/4 p1, 0x3

    .line 1505
    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return-void

    .line 1508
    :cond_37
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    if-ltz v0, :cond_48

    .line 1513
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1514
    iget-object v0, v5, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->fillEncryptionData(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return-void

    .line 1510
    :cond_48
    const-string p1, "Offset to encryption data was negative."

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final readSample(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1533
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_43

    .line 1535
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->getNextTrackBundle(Landroid/util/SparseArray;)Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 1539
    iget-wide v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    if-ltz v2, :cond_23

    .line 1544
    invoke-interface {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1545
    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return v4

    .line 1541
    :cond_23
    const-string v1, "Offset to end of mdat was negative."

    invoke-static {v1, v3}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 1549
    :cond_2a
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleOffset()J

    move-result-wide v5

    .line 1551
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-gez v5, :cond_3e

    .line 1554
    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 1557
    :cond_3e
    invoke-interface {v1, v5}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1558
    iput-object v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1560
    :cond_43
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_c8

    .line 1561
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleSize()I

    move-result v5

    iput v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1565
    iget-object v5, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v5, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    .line 1566
    invoke-direct {v0, v5}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->canReadWithinGopSampleDependencies(Lio/bidmachine/media3/common/Format;)Z

    move-result v5

    xor-int/2addr v5, v8

    iput-boolean v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    .line 1568
    iget v5, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v9, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v5, v9, :cond_76

    .line 1569
    iget v4, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1570
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->skipSampleEncryptionData()V

    .line 1571
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_73

    .line 1572
    iput-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1574
    :cond_73
    iput v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v8

    .line 1578
    :cond_76
    iget-object v5, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget v5, v5, Lio/bidmachine/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v5, v8, :cond_88

    .line 1580
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1581
    invoke-interface {v1, v9}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1584
    :cond_88
    iget-object v5, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v5, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget-object v5, v5, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 1586
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v9, 0x7

    .line 1587
    invoke-virtual {v2, v5, v9}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1588
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget-object v10, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v5, v10}, Lio/bidmachine/media3/extractor/Ac4Util;->getAc4SampleHeader(ILio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 1589
    iget-object v5, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v10, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v5, v10, v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1590
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_bd

    .line 1592
    :cond_b5
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1593
    invoke-virtual {v2, v5, v4}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData(II)I

    move-result v5

    iput v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1595
    :goto_bd
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v9, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v9

    iput v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1596
    iput v7, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1597
    iput v4, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1600
    :cond_c8
    iget-object v5, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    .line 1601
    iget-object v9, v2, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 1602
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSamplePresentationTimeUs()J

    move-result-wide v10

    .line 1603
    iget-object v12, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    if-eqz v12, :cond_da

    .line 1604
    invoke-virtual {v12, v10, v11}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v10

    .line 1606
    :cond_da
    iget v12, v5, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v12, :cond_1fb

    .line 1609
    iget-object v12, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v12}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v12

    .line 1610
    aput-byte v4, v12, v4

    .line 1611
    aput-byte v4, v12, v8

    const/4 v13, 0x2

    .line 1612
    aput-byte v4, v12, v13

    .line 1613
    iget v13, v5, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v13, v13, 0x4

    .line 1617
    :goto_ef
    iget v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v15, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v14, v15, :cond_20c

    .line 1618
    iget v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v14, :cond_17a

    .line 1620
    iget-object v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v14, v14

    if-gtz v14, :cond_102

    iget-boolean v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v14, :cond_113

    .line 1622
    :cond_102
    iget-object v14, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {v14}, Lio/bidmachine/media3/container/NalUnitUtil;->numberOfBytesInNalUnitHeader(Lio/bidmachine/media3/common/Format;)I

    move-result v14

    .line 1623
    iget v15, v5, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v15, v14

    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v6, v3

    if-gt v15, v6, :cond_113

    goto :goto_114

    :cond_113
    move v14, v4

    .line 1634
    :goto_114
    iget v3, v5, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v3, v14

    .line 1637
    invoke-interface {v1, v12, v13, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1638
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1639
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v3

    if-ltz v3, :cond_172

    sub-int/2addr v3, v14

    .line 1644
    iput v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1646
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1647
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v3, v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1648
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v7

    iput v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1649
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v3, v13

    iput v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1650
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->ceaTrackOutputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v3, v3

    if-lez v3, :cond_151

    if-lez v14, :cond_151

    iget-object v3, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    aget-byte v6, v12, v7

    .line 1653
    invoke-static {v3, v6}, Lio/bidmachine/media3/container/NalUnitUtil;->isNalUnitSei(Lio/bidmachine/media3/common/Format;B)Z

    move-result v3

    if-eqz v3, :cond_151

    move v3, v8

    goto :goto_152

    :cond_151
    move v3, v4

    :goto_152
    iput-boolean v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1655
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v9, v3, v14}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1656
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v14

    iput v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    if-lez v14, :cond_16e

    .line 1657
    iget-boolean v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v3, :cond_16e

    iget-object v3, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    .line 1659
    invoke-static {v12, v7, v14, v3}, Lio/bidmachine/media3/container/NalUnitUtil;->isDependedOn([BIILio/bidmachine/media3/common/Format;)Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 1664
    iput-boolean v8, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    :cond_16e
    :goto_16e
    const/4 v3, 0x0

    const/4 v6, 0x3

    goto/16 :goto_ef

    .line 1641
    :cond_172
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    .line 1668
    :cond_17a
    iget-boolean v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v3, :cond_1eb

    .line 1670
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1671
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1672
    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1671
    invoke-interface {v1, v3, v4, v6}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1673
    iget-object v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v9, v3, v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 1674
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1676
    iget-object v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1678
    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    iget-object v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v14}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v14

    .line 1677
    invoke-static {v6, v14}, Lio/bidmachine/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v6

    .line 1679
    iget-object v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v14, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1680
    iget-object v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v14, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 1682
    iget-object v6, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget v6, v6, Lio/bidmachine/media3/common/Format;->maxNumReorderSamples:I

    const/4 v14, -0x1

    if-ne v6, v14, :cond_1c6

    .line 1683
    iget-object v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->getMaxSize()I

    move-result v6

    if-eqz v6, :cond_1d7

    .line 1684
    iget-object v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6, v4}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->setMaxSize(I)V

    goto :goto_1d7

    .line 1686
    :cond_1c6
    iget-object v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->getMaxSize()I

    move-result v6

    iget-object v14, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget v14, v14, Lio/bidmachine/media3/common/Format;->maxNumReorderSamples:I

    if-eq v6, v14, :cond_1d7

    .line 1688
    iget-object v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6, v14}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->setMaxSize(I)V

    .line 1690
    :cond_1d7
    :goto_1d7
    iget-object v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    iget-object v14, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->nalUnitWithoutHeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v10, v11, v14}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->add(JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 1692
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_1ef

    .line 1693
    iget-object v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {v6}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->flush()V

    goto :goto_1ef

    .line 1697
    :cond_1eb
    invoke-interface {v9, v1, v14, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result v3

    .line 1699
    :cond_1ef
    :goto_1ef
    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v3

    iput v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1700
    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v6, v3

    iput v6, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto/16 :goto_16e

    .line 1704
    :cond_1fb
    :goto_1fb
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v5, :cond_20c

    sub-int/2addr v5, v3

    .line 1705
    invoke-interface {v9, v1, v5, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result v3

    .line 1706
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v3

    iput v5, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_1fb

    .line 1710
    :cond_20c
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getCurrentSampleFlags()I

    move-result v1

    .line 1711
    iget-boolean v3, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->isSampleDependedOn:Z

    if-nez v3, :cond_217

    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    :cond_217
    move v12, v1

    .line 1717
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_222

    .line 1719
    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    move-object v15, v1

    goto :goto_223

    :cond_222
    const/4 v15, 0x0

    .line 1722
    :goto_223
    iget v13, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v15}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 1725
    invoke-virtual {v0, v10, v11}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1726
    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_235

    const/4 v2, 0x0

    .line 1727
    iput-object v2, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_235
    const/4 v1, 0x3

    .line 1729
    iput v1, v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    return v8
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 7

    .line 495
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_8
    if-ge v0, p1, :cond_18

    .line 497
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 499
    :cond_18
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 500
    iput p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 501
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->reorderingSeiMessageQueue:Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/container/ReorderingSeiMessageQueue;->clear()V

    .line 502
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 503
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 504
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/Sniffer;->sniffFragmented(Lio/bidmachine/media3/extractor/ExtractorInput;)Lio/bidmachine/media3/extractor/SniffFailure;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 453
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo (io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$MetadataSampleInfo)
.class public final Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final sampleTimeIsRelative:Z

.field public final sampleTimeUs:J

.field public final size:I


# direct methods
.method public constructor <init>(JZI)V
    .registers 5

    .line 1880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1881
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeUs:J

    .line 1882
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->sampleTimeIsRelative:Z

    .line 1883
    iput p4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor.TrackBundle (io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$TrackBundle)
.class public final Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackBundle"
.end annotation


# instance fields
.field public final containerMimeType:Ljava/lang/String;

.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field public currentlyInFragment:Z

.field public final defaultInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public defaultSampleValues:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

.field public final encryptionSignalByte:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

.field public moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

.field public final output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;Ljava/lang/String;)V
    .registers 5

    .line 1913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1914
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 1915
    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 1916
    iput-object p3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    .line 1917
    iput-object p4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->containerMimeType:Ljava/lang/String;

    .line 1918
    new-instance p1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    .line 1919
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1920
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1921
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 1922
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;)V

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z
    .registers 1

    .line 1888
    iget-boolean p0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p0
.end method

.method public static synthetic access$002(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z
    .registers 2

    .line 1888
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p1
.end method


# virtual methods
.method public getCurrentSampleFlags()I
    .registers 3

    .line 2003
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 2004
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->flags:[I

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_1a

    .line 2005
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 2006
    :goto_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_23

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_23
    return v0
.end method

.method public getCurrentSampleOffset()J
    .registers 4

    .line 1988
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1989
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 1990
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getCurrentSamplePresentationTimeUs()J
    .registers 4

    .line 1981
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1982
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v1, v0, v1

    return-wide v1

    .line 1983
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSampleSize()I
    .registers 3

    .line 1995
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_d

    .line 1996
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    return v0

    .line 1997
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getEncryptionBoxIfEncrypted()Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;
    .registers 4

    .line 2156
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2160
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->header:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 2163
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_19

    goto :goto_21

    .line 2165
    :cond_19
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    :goto_21
    if-eqz v2, :cond_28

    .line 2166
    iget-boolean v0, v2, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz v0, :cond_28

    return-object v2

    :cond_28
    return-object v1
.end method

.method public next()Z
    .registers 6

    .line 2026
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 2027
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    .line 2030
    :cond_c
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 2031
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v3, v3, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_21

    add-int/2addr v4, v1

    .line 2032
    iput v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 2033
    iput v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    return v2

    :cond_21
    return v1
.end method

.method public outputSampleEncryptionData(II)I
    .registers 13

    .line 2051
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2058
    :cond_8
    iget v2, v0, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_11

    .line 2059
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    goto :goto_25

    .line 2063
    :cond_11
    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2064
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 2065
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 2066
    array-length v0, v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 2069
    :goto_25
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget v4, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 2070
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_35

    if-eqz p2, :cond_33

    goto :goto_35

    :cond_33
    move v5, v1

    goto :goto_36

    :cond_35
    :goto_35
    move v5, v4

    .line 2074
    :goto_36
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    if-eqz v5, :cond_41

    const/16 v7, 0x80

    goto :goto_42

    :cond_41
    move v7, v1

    :goto_42
    or-int/2addr v7, v2

    int-to-byte v7, v7

    .line 2075
    aput-byte v7, v6, v1

    .line 2076
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 2077
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v7, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v6, v7, v4, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    .line 2079
    iget-object v6, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v6, v0, v2, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    if-nez v5, :cond_5b

    add-int/2addr v2, v4

    return v2

    :cond_5b
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_a4

    .line 2090
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 2092
    iget-object v3, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 2093
    aput-byte v1, v3, v1

    .line 2094
    aput-byte v4, v3, v4

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 2096
    aput-byte v1, v3, v6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 2097
    aput-byte p2, v3, v5

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    .line 2099
    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    .line 2100
    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 2101
    aput-byte p2, v3, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    .line 2102
    aput-byte p1, v3, p2

    .line 2103
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {p1, p2, v7, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    .line 2110
    :cond_a4
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 2111
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    const/4 v8, -0x2

    .line 2112
    invoke-virtual {p1, v8}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    mul-int/2addr v3, v0

    add-int/2addr v3, v6

    if-eqz p2, :cond_db

    .line 2118
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 2119
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 2120
    invoke-virtual {p1, v0, v1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 2122
    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 2124
    aput-byte p2, v0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 2125
    aput-byte p1, v0, v5

    .line 2126
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 2129
    :cond_db
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p2, p1, v3, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;II)V

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    return v2
.end method

.method public reset(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;)V
    .registers 3

    .line 1926
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 1927
    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    .line 1928
    iget-object p1, p1, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object p1, p1, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    .line 1929
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 1930
    iget-object p2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 1931
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    return-void
.end method

.method public resetFragmentInfo()V
    .registers 2

    .line 1954
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->reset()V

    const/4 v0, 0x0

    .line 1955
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1956
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 1957
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 1958
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    .line 1959
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return-void
.end method

.method public seek(J)V
    .registers 6

    .line 1969
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1970
    :goto_2
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget v2, v1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v0, v2, :cond_1d

    .line 1971
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_1d

    .line 1972
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1a

    .line 1973
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1d
    return-void
.end method

.method public skipSampleEncryptionData()V
    .registers 4

    .line 2140
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_25

    .line 2145
    :cond_7
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 2146
    iget v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v0, :cond_12

    .line 2147
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 2149
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget v2, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2150
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_25
    :goto_25
    return-void
.end method

.method public updateDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)V
    .registers 4

    .line 1936
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lio/bidmachine/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/TrackFragment;->header:Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    .line 1938
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Lio/bidmachine/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1937
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1939
    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1940
    :goto_1a
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object p1

    .line 1941
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v0, v0, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    .line 1945
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->containerMimeType:Ljava/lang/String;

    .line 1946
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 1947
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1948
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 1949
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda0;
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
    invoke-static {}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->$r8$lambda$w7wgyC4uECHBLis5q1eK7EJcY8c()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$$ExternalSyntheticLambda1 (io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/container/ReorderingSeiMessageQueue$SeiConsumer;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    return-void
.end method


# virtual methods
.method public final consume(JLio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    invoke-static {v0, p1, p2, p3}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->$r8$lambda$nONidW6l7VzDZMLodkLsy80zU9k(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;JLio/bidmachine/media3/common/util/ParsableByteArray;)V

    return-void
.end method

###### Class io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$$ExternalSyntheticLambda2 (io.bidmachine.media3.extractor.mp4.FragmentedMp4Extractor$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    check-cast p1, Lio/bidmachine/media3/extractor/mp4/Track;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->modifyTrack(Lio/bidmachine/media3/extractor/mp4/Track;)Lio/bidmachine/media3/extractor/mp4/Track;

    move-result-object p1

    return-object p1
.end method
