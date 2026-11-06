###### Class io.bidmachine.media3.extractor.mp4.Mp4Extractor (io.bidmachine.media3.extractor.mp4.Mp4Extractor)
.class public final Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;
.implements Lio/bidmachine/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public accumulatedSampleSizes:[[J

.field public atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public atomHeaderBytesRead:I

.field public atomSize:J

.field public atomType:I

.field public axteAtomOffset:J

.field public final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/container/Mp4Box$ContainerBox;",
            ">;"
        }
    .end annotation
.end field

.field public durationUs:J

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public fileType:I

.field public firstVideoTrackIndex:I

.field public final flags:I

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

.field public motionPhotoMetadata:Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

.field public final nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public parserState:I

.field public readingAuxiliaryTracks:Z

.field public sampleBytesRead:I

.field public sampleBytesWritten:I

.field public sampleCurrentNalBytesRemaining:I

.field public sampleOffsetForAuxiliaryTracks:J

.field public sampleTrackIndex:I

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public seekToAxteAtom:Z

.field public seenFtypAtom:Z

.field public final sefReader:Lio/bidmachine/media3/extractor/mp4/SefReader;

.field public final slowMotionMetadataEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public static synthetic $r8$lambda$mVZ2QAcf2w4feuCV-V6TUVzDRPE()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 183
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;

    sget-object v1, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static synthetic $r8$lambda$r5aiS7lGx1J2LBhZ_9qFr6D3vCo(Lio/bidmachine/media3/extractor/mp4/Track;)Lio/bidmachine/media3/extractor/mp4/Track;
    .registers 1

    .line 0
    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 181
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    sget-object v0, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;I)V
    .registers 4

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 306
    iput p2, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    .line 307
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x3

    goto :goto_15

    :cond_14
    move p1, p2

    .line 309
    :goto_15
    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 310
    new-instance p1, Lio/bidmachine/media3/extractor/mp4/SefReader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/mp4/SefReader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sefReader:Lio/bidmachine/media3/extractor/mp4/SefReader;

    .line 311
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    .line 312
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 313
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 314
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    sget-object v0, Lio/bidmachine/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 315
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 316
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 p1, -0x1

    .line 317
    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 318
    sget-object p1, Lio/bidmachine/media3/extractor/ExtractorOutput;->PLACEHOLDER:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 319
    new-array p1, p2, [Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    return-void
.end method

.method public static brandToFileType(I)I
    .registers 2

    .line 0
    const v0, 0x68656963

    if-eq p0, v0, :cond_e

    const v0, 0x71742020

    if-eq p0, v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0
.end method

.method public static calculateAccumulatedSampleSizes([Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J
    .registers 16

    .line 1129
    array-length v0, p0

    new-array v0, v0, [[J

    .line 1130
    array-length v1, p0

    new-array v1, v1, [I

    .line 1131
    array-length v2, p0

    new-array v2, v2, [J

    .line 1132
    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    move v5, v4

    .line 1133
    :goto_e
    array-length v6, p0

    if-ge v5, v6, :cond_28

    .line 1134
    aget-object v6, p0, v5

    iget-object v6, v6, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    .line 1135
    aget-object v6, p0, v5

    iget-object v6, v6, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v6, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_28
    const-wide/16 v5, 0x0

    move v7, v4

    .line 1139
    :goto_2b
    array-length v8, p0

    if-ge v7, v8, :cond_6a

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    move v11, v4

    .line 1142
    :goto_35
    array-length v12, p0

    if-ge v11, v12, :cond_47

    .line 1143
    aget-boolean v12, v3, v11

    if-nez v12, :cond_44

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_44

    move v10, v11

    move-wide v8, v12

    :cond_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    .line 1148
    :cond_47
    aget v8, v1, v10

    .line 1149
    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    .line 1150
    aget-object v11, p0, v10

    iget-object v11, v11, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v12, v11, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v12, v12, v8

    int-to-long v12, v12

    add-long/2addr v5, v12

    const/4 v12, 0x1

    add-int/2addr v8, v12

    .line 1151
    aput v8, v1, v10

    .line 1152
    array-length v9, v9

    if-ge v8, v9, :cond_65

    .line 1153
    iget-object v9, v11, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_2b

    .line 1156
    :cond_65
    aput-boolean v12, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_6a
    return-object v0
.end method

.method public static codecsToParseWithinGopSampleDependenciesAsFlags(I)I
    .registers 2

    .line 0
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    const/16 v0, 0x20

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

.method public static getSynchronizationSampleIndex(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;J)I
    .registers 5

    .line 1194
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 1197
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result p0

    return p0

    :cond_c
    return v0
.end method

.method public static maybeAdjustSeekOffset(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;JJ)J
    .registers 5

    .line 1174
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_8

    return-wide p3

    .line 1178
    :cond_8
    iget-object p0, p0, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide p1, p0, p1

    .line 1179
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static processFtypAtom(Lio/bidmachine/media3/common/util/ParsableByteArray;)I
    .registers 2

    const/16 v0, 0x8

    .line 1209
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 1210
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1211
    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    const/4 v0, 0x4

    .line 1215
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 1216
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_25

    .line 1217
    invoke-virtual {p0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->brandToFileType(I)I

    move-result v0

    if-eqz v0, :cond_14

    return v0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldParseContainerAtom(I)Z
    .registers 2

    .line 0
    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_2b

    const v0, 0x7472616b

    if-eq p0, v0, :cond_2b

    const v0, 0x6d646961

    if-eq p0, v0, :cond_2b

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_2b

    const v0, 0x7374626c

    if-eq p0, v0, :cond_2b

    const v0, 0x65647473

    if-eq p0, v0, :cond_2b

    const v0, 0x6d657461

    if-eq p0, v0, :cond_2b

    const v0, 0x61787465

    if-ne p0, v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldParseLeafAtom(I)Z
    .registers 2

    .line 0
    const v0, 0x6d646864

    if-eq p0, v0, :cond_5d

    const v0, 0x6d766864

    if-eq p0, v0, :cond_5d

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_5d

    const v0, 0x73747364

    if-eq p0, v0, :cond_5d

    const v0, 0x73747473

    if-eq p0, v0, :cond_5d

    const v0, 0x73747373

    if-eq p0, v0, :cond_5d

    const v0, 0x63747473

    if-eq p0, v0, :cond_5d

    const v0, 0x656c7374

    if-eq p0, v0, :cond_5d

    const v0, 0x73747363

    if-eq p0, v0, :cond_5d

    const v0, 0x7374737a

    if-eq p0, v0, :cond_5d

    const v0, 0x73747a32

    if-eq p0, v0, :cond_5d

    const v0, 0x7374636f

    if-eq p0, v0, :cond_5d

    const v0, 0x636f3634

    if-eq p0, v0, :cond_5d

    const v0, 0x746b6864

    if-eq p0, v0, :cond_5d

    const v0, 0x66747970

    if-eq p0, v0, :cond_5d

    const v0, 0x75647461

    if-eq p0, v0, :cond_5d

    const v0, 0x6b657973

    if-eq p0, v0, :cond_5d

    const v0, 0x696c7374

    if-ne p0, v0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p0, 0x0

    return p0

    :cond_5d
    :goto_5d
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final canReadWithinGopSampleDependencies(Lio/bidmachine/media3/common/Format;)Z
    .registers 5

    .line 1115
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 1116
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_13

    return v1

    :cond_13
    return v2

    .line 1118
    :cond_14
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "video/hevc"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1119
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_25

    return v1

    :cond_25
    return v2
.end method

.method public final enterReadingAtomHeaderState()V
    .registers 2

    const/4 v0, 0x0

    .line 520
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    .line 521
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method public final getAuxiliaryTrackTypesForAuxiliaryTracks(Lio/bidmachine/media3/common/Metadata;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Metadata;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 829
    const-string v0, "auxiliary.tracks.map"

    .line 831
    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->findMdtaMetadataEntryWithKey(Lio/bidmachine/media3/common/Metadata;Ljava/lang/String;)Lio/bidmachine/media3/container/MdtaMetadataEntry;

    move-result-object p1

    .line 830
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;

    .line 832
    invoke-virtual {p1}, Lio/bidmachine/media3/container/MdtaMetadataEntry;->getAuxiliaryTrackTypesFromMap()Ljava/util/List;

    move-result-object p1

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    .line 834
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 835
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 837
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3b

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3a

    const/4 v4, 0x3

    if-eq v3, v5, :cond_3b

    if-eq v3, v4, :cond_38

    move v4, v1

    goto :goto_3b

    :cond_38
    const/4 v4, 0x4

    goto :goto_3b

    :cond_3a
    move v4, v5

    .line 853
    :cond_3b
    :goto_3b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_45
    return-object v0
.end method

.method public getDurationUs()J
    .registers 3

    .line 428
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 4

    const/4 v0, -0x1

    .line 433
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->getSeekPoints(JI)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object p1

    return-object p1
.end method

.method public getSeekPoints(JI)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    .line 449
    iget-object v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v5, v4

    if-nez v5, :cond_13

    .line 450
    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    sget-object v2, Lio/bidmachine/media3/extractor/SeekPoint;->START:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {v1, v2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object v1

    :cond_13
    const/4 v5, -0x1

    if-eq v3, v5, :cond_18

    move v6, v3

    goto :goto_1a

    .line 459
    :cond_18
    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    :goto_1a
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v9, -0x1

    if-eq v6, v5, :cond_58

    .line 462
    aget-object v4, v4, v6

    iget-object v4, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 463
    invoke-static {v4, v1, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->getSynchronizationSampleIndex(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;J)I

    move-result v6

    if-ne v6, v5, :cond_35

    .line 465
    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    sget-object v2, Lio/bidmachine/media3/extractor/SeekPoint;->START:Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {v1, v2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object v1

    .line 467
    :cond_35
    iget-object v11, v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v11, v6

    .line 469
    iget-object v11, v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v14, v11, v6

    cmp-long v11, v12, v1

    if-gez v11, :cond_5e

    .line 470
    iget v11, v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_5e

    .line 471
    invoke-virtual {v4, v1, v2}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    if-eq v1, v5, :cond_5e

    if-eq v1, v6, :cond_5e

    .line 473
    iget-object v2, v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v9, v2, v1

    .line 474
    iget-object v2, v4, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v1, v2, v1

    goto :goto_60

    :cond_58
    const-wide v14, 0x7fffffffffffffffL

    move-wide v12, v1

    :cond_5e
    move-wide v1, v9

    move-wide v9, v7

    :goto_60
    if-ne v3, v5, :cond_80

    const/4 v3, 0x0

    .line 484
    :goto_63
    iget-object v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v5, v4

    if-ge v3, v5, :cond_80

    .line 485
    iget v5, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    if-eq v3, v5, :cond_7d

    .line 486
    aget-object v4, v4, v3

    iget-object v4, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 487
    invoke-static {v4, v12, v13, v14, v15}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v5

    cmp-long v11, v9, v7

    if-eqz v11, :cond_7c

    .line 489
    invoke-static {v4, v9, v10, v1, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->maybeAdjustSeekOffset(Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;JJ)J

    move-result-wide v1

    :cond_7c
    move-wide v14, v5

    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 495
    :cond_80
    new-instance v3, Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {v3, v12, v13, v14, v15}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v4, v9, v7

    if-nez v4, :cond_8f

    .line 497
    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v3}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object v1

    .line 499
    :cond_8f
    new-instance v4, Lio/bidmachine/media3/extractor/SeekPoint;

    invoke-direct {v4, v9, v10, v1, v2}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 500
    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {v1, v3, v4}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object v1
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

    .line 351
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic getSniffFailureDetails()Ljava/util/List;
    .registers 2

    .line 81
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->getSniffFailureDetails()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final getTrackIndexOfNextReadSample(J)I
    .registers 25

    move-object/from16 v0, p0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, v4

    move v7, v5

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    const-wide v16, 0x7fffffffffffffffL

    .line 1033
    :goto_1c
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v2, v1

    if-ge v7, v2, :cond_68

    .line 1034
    aget-object v1, v1, v7

    .line 1035
    iget v2, v1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 1036
    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget v3, v1, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v2, v3, :cond_2c

    goto :goto_65

    .line 1039
    :cond_2c
    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v18, v1, v2

    .line 1040
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    aget-object v1, v1, v7

    aget-wide v2, v1, v2

    sub-long v18, v18, p1

    const-wide/16 v20, 0x0

    cmp-long v1, v18, v20

    if-ltz v1, :cond_4e

    const-wide/32 v20, 0x40000

    cmp-long v1, v18, v20

    if-ltz v1, :cond_4c

    goto :goto_4e

    :cond_4c
    move v1, v5

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v1, 0x1

    :goto_4f
    if-nez v1, :cond_53

    if-nez v13, :cond_59

    :cond_53
    if-ne v1, v13, :cond_5e

    cmp-long v20, v18, v14

    if-gez v20, :cond_5e

    :cond_59
    move v13, v1

    move-wide v11, v2

    move v6, v7

    move-wide/from16 v14, v18

    :cond_5e
    cmp-long v18, v2, v8

    if-gez v18, :cond_65

    move v10, v1

    move-wide v8, v2

    move v4, v7

    :cond_65
    :goto_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_68
    cmp-long v1, v8, v16

    if-eqz v1, :cond_78

    if-eqz v10, :cond_78

    const-wide/32 v1, 0xa00000

    add-long/2addr v8, v1

    cmp-long v1, v11, v8

    if-gez v1, :cond_77

    goto :goto_78

    :cond_77
    return v4

    :cond_78
    :goto_78
    return v6
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 357
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_e

    .line 358
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    .line 359
    :cond_e
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeSetDefaultSampleOffsetForAuxiliaryTracks(Lio/bidmachine/media3/common/Metadata;)V
    .registers 6

    .line 818
    const-string v0, "auxiliary.tracks.interleaved"

    .line 819
    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->findMdtaMetadataEntryWithKey(Lio/bidmachine/media3/common/Metadata;Ljava/lang/String;)Lio/bidmachine/media3/container/MdtaMetadataEntry;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 821
    iget-object p1, p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    if-nez p1, :cond_16

    .line 822
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForAuxiliaryTracks:J

    :cond_16
    return-void
.end method

.method public final maybeSkipRemainingMetaAtomHeaderBytes(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 1089
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 1090
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->maybeSkipRemainingMetaBoxHeaderBytes(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 1091
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 1092
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method public final processAtomEnded(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 647
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_49

    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    iget-wide v2, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_49

    .line 648
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    .line 649
    iget v2, v0, Lio/bidmachine/media3/container/Mp4Box;->type:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_35

    .line 651
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->processMoovAtom(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V

    .line 652
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 653
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    if-nez v0, :cond_0

    .line 654
    iput v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 656
    :cond_35
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->add(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V

    goto :goto_0

    .line 660
    :cond_49
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    if-eq p1, v1, :cond_50

    .line 661
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_50
    return-void
.end method

.method public final processEndOfStreamReadingAtomHeader()V
    .registers 6

    const/4 v0, 0x0

    .line 1076
    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->fileType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_47

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_47

    .line 1078
    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v1

    .line 1080
    iget-object v2, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    if-nez v2, :cond_18

    const/4 v0, 0x0

    goto :goto_23

    :cond_18
    new-instance v3, Lio/bidmachine/media3/common/Metadata;

    const/4 v4, 0x1

    new-array v4, v4, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    move-object v0, v3

    .line 1081
    :goto_23
    new-instance v2, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 1082
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 1083
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    :cond_47
    return-void
.end method

.method public final processMoovAtom(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)V
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v9, 0x0

    const v2, 0x6d657461

    .line 673
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getContainerBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    .line 674
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    if-eqz v2, :cond_32

    .line 676
    invoke-static {v2}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseMdtaFromMeta(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v2

    .line 677
    iget-boolean v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v4, :cond_29

    .line 678
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->maybeSetDefaultSampleOffsetForAuxiliaryTracks(Lio/bidmachine/media3/common/Metadata;)V

    .line 681
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->getAuxiliaryTrackTypesForAuxiliaryTracks(Lio/bidmachine/media3/common/Metadata;)Ljava/util/List;

    move-result-object v3

    :cond_26
    move-object v12, v2

    move-object v13, v3

    goto :goto_34

    .line 682
    :cond_29
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->shouldSeekToAxteAtom(Lio/bidmachine/media3/common/Metadata;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 683
    iput-boolean v10, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    return-void

    :cond_32
    move-object v13, v3

    const/4 v12, 0x0

    .line 689
    :goto_34
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 692
    iget v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->fileType:I

    if-ne v2, v10, :cond_3f

    move v7, v10

    goto :goto_40

    :cond_3f
    move v7, v9

    .line 693
    :goto_40
    new-instance v2, Lio/bidmachine/media3/extractor/GaplessInfoHolder;

    invoke-direct {v2}, Lio/bidmachine/media3/extractor/GaplessInfoHolder;-><init>()V

    const v3, 0x75647461

    .line 695
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 697
    invoke-static {v3}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseUdta(Lio/bidmachine/media3/container/Mp4Box$LeafBox;)Lio/bidmachine/media3/common/Metadata;

    move-result-object v3

    .line 698
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/extractor/GaplessInfoHolder;->setFromMetadata(Lio/bidmachine/media3/common/Metadata;)Z

    move-object v15, v3

    goto :goto_58

    :cond_57
    const/4 v15, 0x0

    .line 701
    :goto_58
    new-instance v3, Lio/bidmachine/media3/common/Metadata;

    const v4, 0x6d766864

    .line 703
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->getLeafBoxOfType(I)Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget-object v4, v4, Lio/bidmachine/media3/container/Mp4Box$LeafBox;->data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseMvhd(Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/container/Mp4TimestampData;

    move-result-object v4

    new-array v5, v10, [Lio/bidmachine/media3/common/Metadata$Entry;

    aput-object v4, v5, v9

    invoke-direct {v3, v5}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    .line 705
    iget v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/2addr v4, v10

    if-eqz v4, :cond_7b

    move v6, v10

    goto :goto_7c

    :cond_7b
    move v6, v9

    .line 706
    :goto_7c
    new-instance v8, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;-><init>()V

    move-object v5, v3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move/from16 v17, v10

    move-object/from16 v10, v16

    .line 707
    invoke-static/range {v1 .. v8}, Lio/bidmachine/media3/extractor/mp4/BoxParser;->parseTraks(Lio/bidmachine/media3/container/Mp4Box$ContainerBox;Lio/bidmachine/media3/extractor/GaplessInfoHolder;JLio/bidmachine/media3/common/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 716
    iget-boolean v3, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v3, :cond_c3

    .line 718
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_a3

    move/from16 v3, v17

    goto :goto_a4

    :cond_a3
    move v3, v9

    :goto_a4
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 723
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 724
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 719
    const-string v6, "The number of auxiliary track types from metadata (%d) is not same as the number of auxiliary tracks (%d)"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 717
    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 727
    :cond_c3
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/MimeTypeResolver;->getContainerMimeType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    move v7, v9

    move v11, v7

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, -0x1

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    .line 728
    :goto_d4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1b8

    .line 729
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 730
    iget v6, v9, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v6, :cond_ee

    move-object/from16 v20, v1

    move-object/from16 v24, v2

    move-object v2, v3

    move-object v3, v12

    move-object v6, v14

    const/4 v14, -0x1

    goto/16 :goto_1ad

    .line 733
    :cond_ee
    iget-object v6, v9, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    move-object/from16 v20, v1

    .line 734
    new-instance v1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    move-object/from16 v21, v14

    iget-object v14, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v23, v3

    iget v3, v6, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    .line 735
    invoke-interface {v14, v11, v3}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v3

    invoke-direct {v1, v6, v9, v3}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lio/bidmachine/media3/extractor/mp4/Track;Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/TrackOutput;)V

    move-object v3, v12

    .line 738
    iget-wide v11, v6, Lio/bidmachine/media3/extractor/mp4/Track;->durationUs:J

    cmp-long v14, v11, v18

    if-eqz v14, :cond_10d

    goto :goto_10f

    :cond_10d
    iget-wide v11, v9, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->durationUs:J

    .line 739
    :goto_10f
    iget-object v14, v1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v14, v11, v12}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    .line 740
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 743
    iget-object v11, v6, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget-object v11, v11, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v12, "audio/true-hd"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_129

    .line 745
    iget v9, v9, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    mul-int/lit8 v9, v9, 0x10

    goto :goto_12d

    .line 749
    :cond_129
    iget v9, v9, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v9, v9, 0x1e

    .line 752
    :goto_12d
    iget-object v11, v6, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v11}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v11

    .line 753
    invoke-virtual {v11, v9}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 754
    iget v9, v6, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    const/4 v12, 0x2

    if-ne v9, v12, :cond_165

    .line 755
    iget-object v9, v6, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget v9, v9, Lio/bidmachine/media3/common/Format;->roleFlags:I

    .line 756
    iget v14, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v14, v14, 0x8

    if-eqz v14, :cond_14d

    const/4 v14, -0x1

    if-ne v8, v14, :cond_14b

    move/from16 v14, v17

    goto :goto_14c

    :cond_14b
    move v14, v12

    :goto_14c
    or-int/2addr v9, v14

    .line 760
    :cond_14d
    iget-boolean v14, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    if-eqz v14, :cond_162

    const v14, 0x8000

    or-int/2addr v9, v14

    .line 762
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v11, v14}, Lio/bidmachine/media3/common/Format$Builder;->setAuxiliaryTrackType(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 764
    :cond_162
    invoke-virtual {v11, v9}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 767
    :cond_165
    iget v9, v6, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    invoke-static {v9, v2, v11}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->setFormatGaplessInfo(ILio/bidmachine/media3/extractor/GaplessInfoHolder;Lio/bidmachine/media3/common/Format$Builder;)V

    .line 768
    iget v9, v6, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    iget-object v14, v6, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget-object v14, v14, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    .line 773
    iget-object v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_17c

    move-object/from16 v24, v2

    const/4 v12, 0x0

    goto :goto_185

    :cond_17c
    new-instance v12, Lio/bidmachine/media3/common/Metadata;

    move-object/from16 v24, v2

    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-direct {v12, v2}, Lio/bidmachine/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_185
    filled-new-array {v12, v15, v10}, [Lio/bidmachine/media3/common/Metadata;

    move-result-object v2

    .line 768
    invoke-static {v9, v3, v11, v14, v2}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->setFormatMetadata(ILio/bidmachine/media3/common/Metadata;Lio/bidmachine/media3/common/Format$Builder;Lio/bidmachine/media3/common/Metadata;[Lio/bidmachine/media3/common/Metadata;)V

    move-object/from16 v2, v23

    .line 776
    invoke-virtual {v11, v2}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    .line 777
    iget-object v9, v1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-virtual {v11}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v11

    invoke-interface {v9, v11}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 779
    iget v6, v6, Lio/bidmachine/media3/extractor/mp4/Track;->type:I

    const/4 v9, 0x2

    const/4 v14, -0x1

    if-ne v6, v9, :cond_1a6

    if-ne v8, v14, :cond_1a6

    .line 780
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    :cond_1a6
    move-object/from16 v6, v21

    .line 782
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v11, v22

    :goto_1ad
    add-int/lit8 v7, v7, 0x1

    move-object v12, v3

    move-object v14, v6

    move-object/from16 v1, v20

    move-object v3, v2

    move-object/from16 v2, v24

    goto/16 :goto_d4

    :cond_1b8
    move-object v6, v14

    .line 784
    iput v8, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->firstVideoTrackIndex:I

    .line 785
    iput-wide v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->durationUs:J

    const/4 v1, 0x0

    .line 786
    new-array v1, v1, [Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 787
    invoke-static {v1}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->calculateAccumulatedSampleSizes([Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;)[[J

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->accumulatedSampleSizes:[[J

    .line 789
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    .line 790
    iget-object v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method

.method public final processUnparsedAtom(J)V
    .registers 16

    .line 1097
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v1, 0x6d707664

    if-ne v0, v1, :cond_20

    .line 1100
    new-instance v2, Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, v0

    add-long v9, p1, v3

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    int-to-long v0, v0

    sub-long v11, v3, v0

    const-wide/16 v3, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, p1

    invoke-direct/range {v2 .. v12}, Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    iput-object v2, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->motionPhotoMetadata:Lio/bidmachine/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    :cond_20
    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    :cond_0
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 412
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readSefData(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 414
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 410
    :cond_18
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readSample(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 405
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readAtomPayload(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 400
    :cond_24
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readAtomHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public final readAtomHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2f

    .line 527
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v3, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 528
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->processEndOfStreamReadingAtomHeader()V

    return v3

    .line 531
    :cond_18
    iput v2, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 532
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 533
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 534
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    .line 537
    :cond_2f
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4e

    .line 540
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 541
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 542
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    goto :goto_79

    :cond_4e
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_79

    .line 546
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6a

    .line 548
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    if-eqz v0, :cond_6a

    .line 550
    iget-wide v4, v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->endPosition:J

    :cond_6a
    cmp-long v0, v4, v6

    if-eqz v0, :cond_79

    .line 554
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 558
    :cond_79
    :goto_79
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_10d

    .line 563
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 564
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v2, v6

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a4

    .line 565
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v4, 0x6d657461

    if-ne v0, v4, :cond_a4

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->maybeSkipRemainingMetaAtomHeaderBytes(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    .line 568
    :cond_a4
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v0, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    iget v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v0, v4, v2, v3}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 569
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_bd

    .line 570
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    goto :goto_10c

    .line 573
    :cond_bd
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_10c

    .line 575
    :cond_c1
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 578
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v2, :cond_cf

    move p1, v1

    goto :goto_d0

    :cond_cf
    move p1, v3

    :goto_d0
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 579
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_de

    move p1, v1

    goto :goto_df

    :cond_de
    move p1, v3

    :goto_df
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 580
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 581
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeader:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 583
    iput v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_10c

    .line 585
    :cond_fc
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->processUnparsedAtom(J)V

    const/4 p1, 0x0

    .line 586
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 587
    iput v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    :goto_10c
    return v1

    .line 559
    :cond_10d
    const-string p1, "Atom size less than header length (unsupported)."

    invoke-static {p1}, Lio/bidmachine/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final readAtomPayload(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 602
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 604
    iget-object v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomData:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_46

    .line 606
    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v7

    iget v8, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v0, v0

    invoke-interface {p1, v7, v8, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 607
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v0, 0x66747970

    if-ne p1, v0, :cond_2b

    .line 608
    iput-boolean v5, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    .line 609
    invoke-static {v4}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->processFtypAtom(Lio/bidmachine/media3/common/util/ParsableByteArray;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->fileType:I

    goto :goto_5e

    .line 610
    :cond_2b
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5e

    .line 611
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;

    new-instance v0, Lio/bidmachine/media3/container/Mp4Box$LeafBox;

    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v0, v1, v4}, Lio/bidmachine/media3/container/Mp4Box$LeafBox;-><init>(ILio/bidmachine/media3/common/util/ParsableByteArray;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/container/Mp4Box$ContainerBox;->add(Lio/bidmachine/media3/container/Mp4Box$LeafBox;)V

    goto :goto_5e

    .line 614
    :cond_46
    iget-boolean v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->seenFtypAtom:Z

    if-nez v4, :cond_53

    iget v4, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomType:I

    const v7, 0x6d646174

    if-ne v4, v7, :cond_53

    .line 617
    iput v5, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->fileType:I

    :cond_53
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_60

    long-to-int v0, v0

    .line 621
    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_5e
    :goto_5e
    move p1, v6

    goto :goto_68

    .line 623
    :cond_60
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    move p1, v5

    .line 627
    :goto_68
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->processAtomEnded(J)V

    .line 628
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    if-eqz v0, :cond_78

    .line 629
    iput-boolean v5, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->readingAuxiliaryTracks:Z

    .line 630
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    iput-wide v0, p2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    .line 632
    iput-boolean v6, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->seekToAxteAtom:Z

    move p1, v5

    :cond_78
    if-eqz p1, :cond_80

    .line 634
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_80

    return v5

    :cond_80
    return v6
.end method

.method public final readSample(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 874
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 875
    iget v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_16

    .line 876
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->getTrackIndexOfNextReadSample(J)I

    move-result v4

    iput v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    if-ne v4, v5, :cond_16

    return v5

    .line 881
    :cond_16
    iget-object v4, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    iget v6, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    aget-object v4, v4, v6

    .line 882
    iget-object v6, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 883
    iget v14, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 884
    iget-object v7, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v8, v7, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v9, v8, v14

    iget-wide v11, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleOffsetForAuxiliaryTracks:J

    add-long/2addr v9, v11

    .line 885
    iget-object v7, v7, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v7, v7, v14

    .line 886
    iget-object v8, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    sub-long v2, v9, v2

    .line 887
    iget v11, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    int-to-long v11, v11

    add-long/2addr v2, v11

    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    const/4 v15, 0x1

    if-ltz v11, :cond_43

    const-wide/32 v11, 0x40000

    cmp-long v11, v2, v11

    if-ltz v11, :cond_47

    :cond_43
    move-object/from16 v1, p2

    goto/16 :goto_19a

    .line 892
    :cond_47
    iget-object v9, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget v9, v9, Lio/bidmachine/media3/extractor/mp4/Track;->sampleTransformation:I

    if-ne v9, v15, :cond_52

    const-wide/16 v9, 0x8

    add-long/2addr v2, v9

    add-int/lit8 v7, v7, -0x8

    :cond_52
    long-to-int v2, v2

    .line 898
    invoke-interface {v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 899
    iget-object v2, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v2, v2, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->canReadWithinGopSampleDependencies(Lio/bidmachine/media3/common/Format;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 900
    iput-boolean v15, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    .line 902
    :cond_62
    iget-object v2, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget v3, v2, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v10, 0x0

    if-eqz v3, :cond_111

    .line 905
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 906
    aput-byte v10, v2, v10

    .line 907
    aput-byte v10, v2, v15

    const/4 v3, 0x2

    .line 908
    aput-byte v10, v2, v3

    .line 909
    iget-object v3, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget v3, v3, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v11, 0x4

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v7, v3

    .line 914
    :goto_7e
    iget v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v12, v7, :cond_10e

    .line 915
    iget v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v12, :cond_f9

    .line 916
    iget-object v12, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget v13, v12, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 918
    iget-boolean v5, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v5, :cond_af

    iget-object v5, v12, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    .line 919
    invoke-static {v5}, Lio/bidmachine/media3/container/NalUnitUtil;->numberOfBytesInNalUnitHeader(Lio/bidmachine/media3/common/Format;)I

    move-result v5

    add-int/2addr v5, v13

    iget-object v12, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v12, v12, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v12, v12, v14

    iget v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    sub-int/2addr v12, v9

    if-gt v5, v12, :cond_af

    .line 925
    iget-object v5, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v5, v5, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    .line 926
    invoke-static {v5}, Lio/bidmachine/media3/container/NalUnitUtil;->numberOfBytesInNalUnitHeader(Lio/bidmachine/media3/common/Format;)I

    move-result v5

    .line 927
    iget-object v9, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget v9, v9, Lio/bidmachine/media3/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int v13, v9, v5

    goto :goto_b0

    :cond_af
    move v5, v10

    .line 931
    :goto_b0
    invoke-interface {v1, v2, v3, v13}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 932
    iget v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v9, v13

    iput v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 933
    iget-object v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 934
    iget-object v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v9

    if-ltz v9, :cond_f1

    sub-int/2addr v9, v5

    .line 939
    iput v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 942
    iget-object v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 943
    iget-object v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalStartCode:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v6, v9, v11}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 944
    iget v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v11

    iput v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-lez v5, :cond_ef

    .line 947
    iget-object v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->nalPrefix:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v6, v9, v5}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 948
    iget v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v9, v5

    iput v9, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 951
    iget-object v9, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    iget-object v9, v9, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {v2, v11, v5, v9}, Lio/bidmachine/media3/container/NalUnitUtil;->isDependedOn([BIILio/bidmachine/media3/common/Format;)Z

    move-result v5

    if-eqz v5, :cond_ef

    .line 956
    iput-boolean v15, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    :cond_ef
    :goto_ef
    const/4 v5, -0x1

    goto :goto_7e

    .line 936
    :cond_f1
    const-string v1, "Invalid NAL length"

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_f9
    const/4 v5, 0x0

    .line 961
    invoke-interface {v6, v1, v12, v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result v9

    .line 962
    iget v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v12, v9

    iput v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 963
    iget v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v12, v9

    iput v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 964
    iget v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v12, v9

    iput v12, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_ef

    :cond_10e
    const/4 v5, 0x0

    :cond_10f
    move v11, v7

    goto :goto_154

    :cond_111
    const/4 v5, 0x0

    .line 968
    iget-object v2, v2, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 969
    iget v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-nez v2, :cond_132

    .line 970
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v7, v2}, Lio/bidmachine/media3/extractor/Ac4Util;->getAc4SampleHeader(ILio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 971
    iget-object v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v3, 0x7

    invoke-interface {v6, v2, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 972
    iget v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v2, v3

    iput v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    :cond_132
    add-int/lit8 v7, v7, 0x7

    goto :goto_13a

    :cond_135
    if-eqz v8, :cond_13a

    .line 976
    invoke-virtual {v8, v1}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->startSample(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    .line 979
    :cond_13a
    :goto_13a
    iget v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    if-ge v2, v7, :cond_10f

    sub-int v2, v7, v2

    .line 980
    invoke-interface {v6, v1, v2, v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result v2

    .line 981
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    add-int/2addr v3, v2

    iput v3, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 982
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 983
    iget v3, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v3, v2

    iput v3, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_13a

    .line 987
    :goto_154
    iget-object v1, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v1, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v12, v2, v14

    .line 988
    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->flags:[I

    aget v1, v1, v14

    .line 989
    iget-boolean v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    if-nez v2, :cond_165

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_165
    move v9, v1

    if-eqz v8, :cond_17d

    move-object v7, v6

    move-object v6, v8

    move v1, v10

    move v10, v9

    move-wide v8, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 993
    invoke-virtual/range {v6 .. v13}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->sampleMetadata(Lio/bidmachine/media3/extractor/TrackOutput;JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    add-int/2addr v14, v15

    .line 995
    iget-object v2, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    iget v2, v2, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v14, v2, :cond_189

    .line 996
    invoke-virtual {v6, v7, v5}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_189

    :cond_17d
    move-object v7, v6

    move v2, v9

    move v1, v10

    move v10, v11

    move-wide v8, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v7, v8

    move v9, v2

    .line 999
    invoke-interface/range {v6 .. v12}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 1003
    :cond_189
    :goto_189
    iget v2, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/2addr v2, v15

    iput v2, v4, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    const/4 v2, -0x1

    .line 1004
    iput v2, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 1005
    iput v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 1006
    iput v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 1007
    iput v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1008
    iput-boolean v1, v0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    return v1

    .line 889
    :goto_19a
    iput-wide v9, v1, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    return v15
.end method

.method public final readSefData(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sefReader:Lio/bidmachine/media3/extractor/mp4/SefReader;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-virtual {v0, p1, p2, v1}, Lio/bidmachine/media3/extractor/mp4/SefReader;->read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;Ljava/util/List;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 640
    iget-wide v0, p2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_16

    .line 641
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :cond_16
    return p1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 8

    .line 364
    iget-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 365
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    const/4 v1, -0x1

    .line 366
    iput v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleTrackIndex:I

    .line 367
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesRead:I

    .line 368
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 369
    iput v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 370
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->isSampleDependedOn:Z

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_2d

    .line 374
    iget p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->parserState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_22

    .line 375
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    return-void

    .line 377
    :cond_22
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->sefReader:Lio/bidmachine/media3/extractor/mp4/SefReader;

    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/mp4/SefReader;->reset()V

    .line 378
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->slowMotionMetadataEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 381
    :cond_2d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->tracks:[Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length p2, p1

    :goto_30
    if-ge v0, p2, :cond_41

    aget-object v1, p1, v0

    .line 382
    invoke-virtual {p0, v1, p3, p4}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->updateSampleIndex(Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V

    .line 383
    iget-object v1, v1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    if-eqz v1, :cond_3e

    .line 384
    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;->reset()V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_41
    return-void
.end method

.method public final shouldSeekToAxteAtom(Lio/bidmachine/media3/common/Metadata;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 797
    :cond_4
    iget v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_27

    .line 799
    const-string v1, "auxiliary.tracks.offset"

    .line 800
    invoke-static {p1, v1}, Lio/bidmachine/media3/extractor/mp4/MetadataUtil;->findMdtaMetadataEntryWithKey(Lio/bidmachine/media3/common/Metadata;Ljava/lang/String;)Lio/bidmachine/media3/container/MdtaMetadataEntry;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 802
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object p1, p1, Lio/bidmachine/media3/container/MdtaMetadataEntry;->value:[B

    invoke-direct {v1, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_27

    .line 804
    iput-wide v1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->axteAtomOffset:J

    const/4 p1, 0x1

    return p1

    :cond_27
    return v0
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 343
    :goto_b
    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/mp4/Sniffer;->sniffUnfragmented(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Lio/bidmachine/media3/extractor/SniffFailure;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 345
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_1a

    :cond_16
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->lastSniffFailures:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_1f

    return v2

    :cond_1f
    return v1
.end method

.method public final updateSampleIndex(Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;J)V
    .registers 7

    .line 1065
    iget-object v0, p1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 1066
    invoke-virtual {v0, p2, p3}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 1069
    invoke-virtual {v0, p2, p3}, Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 1071
    :cond_d
    iput v1, p1, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    return-void
.end method

###### Class io.bidmachine.media3.extractor.mp4.Mp4Extractor.Mp4Track (io.bidmachine.media3.extractor.mp4.Mp4Extractor$Mp4Track)
.class public final Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4Track"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

.field public final track:Lio/bidmachine/media3/extractor/mp4/Track;

.field public final trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/mp4/Track;Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 4

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lio/bidmachine/media3/extractor/mp4/Track;

    .line 1281
    iput-object p2, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lio/bidmachine/media3/extractor/mp4/TrackSampleTable;

    .line 1282
    iput-object p3, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 1284
    iget-object p1, p1, Lio/bidmachine/media3/extractor/mp4/Track;->format:Lio/bidmachine/media3/common/Format;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1285
    new-instance p1, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;-><init>()V

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 1286
    :goto_1c
    iput-object p1, p0, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lio/bidmachine/media3/extractor/TrueHdSampleRechunker;

    return-void
.end method

###### Class io.bidmachine.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/extractor/mp4/Track;

    invoke-static {p1}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->$r8$lambda$r5aiS7lGx1J2LBhZ_9qFr6D3vCo(Lio/bidmachine/media3/extractor/mp4/Track;)Lio/bidmachine/media3/extractor/mp4/Track;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda1 (io.bidmachine.media3.extractor.mp4.Mp4Extractor$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/extractor/mp4/Mp4Extractor$$ExternalSyntheticLambda1;
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
    invoke-static {}, Lio/bidmachine/media3/extractor/mp4/Mp4Extractor;->$r8$lambda$mVZ2QAcf2w4feuCV-V6TUVzDRPE()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
