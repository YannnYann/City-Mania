###### Class io.bidmachine.media3.exoplayer.hls.DefaultHlsExtractorFactory (io.bidmachine.media3.exoplayer.hls.DefaultHlsExtractorFactory)
.class public final Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;


# static fields
.field public static final DEFAULT_EXTRACTOR_ORDER:[I


# instance fields
.field public codecsToParseWithinGopSampleDependencies:I

.field public final exposeCea608WhenMissingDeclarations:Z

.field public parseSubtitlesDuringExtraction:Z

.field public final payloadReaderFactoryFlags:I

.field public subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    .line 60
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 102
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    .line 103
    new-instance p1, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method

.method public static addFileTypeIfValidAndNotPresent(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 220
    sget-object v0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    invoke-static {v0, p0}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1b

    .line 223
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static createFragmentedMp4Extractor(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;ZLio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/common/Format;Ljava/util/List;I)Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;",
            "Z",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;I)",
            "Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 332
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->isFmp4Variant(Lio/bidmachine/media3/common/Format;)Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 p3, 0x4

    goto :goto_9

    :cond_8
    const/4 p3, 0x0

    :goto_9
    if-nez p1, :cond_f

    .line 334
    sget-object p0, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    or-int/lit8 p3, p3, 0x20

    :cond_f
    move-object v1, p0

    .line 338
    invoke-static {p5}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;->codecsToParseWithinGopSampleDependenciesAsFlags(I)I

    move-result p0

    or-int v2, p3, p0

    .line 340
    new-instance v0, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    if-eqz p4, :cond_1c

    :goto_1a
    move-object v5, p4

    goto :goto_21

    .line 345
    :cond_1c
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p4

    goto :goto_1a

    :goto_21
    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;ILio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/mp4/Track;Ljava/util/List;Lio/bidmachine/media3/extractor/TrackOutput;)V

    return-object v0
.end method

.method public static createTsExtractor(IZLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)Lio/bidmachine/media3/extractor/ts/TsExtractor;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            "Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;",
            "Z)",
            "Lio/bidmachine/media3/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 v0, p0, 0x10

    if-eqz p3, :cond_7

    or-int/lit8 v0, p0, 0x30

    goto :goto_1f

    :cond_7
    if-eqz p1, :cond_1d

    .line 290
    new-instance p0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    const-string p1, "application/cea-608"

    .line 292
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p0

    .line 291
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_1f

    .line 294
    :cond_1d
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 296
    :goto_1f
    iget-object p0, p2, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 301
    const-string p1, "audio/mp4a-latm"

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_31

    or-int/lit8 v0, v0, 0x2

    .line 304
    :cond_31
    const-string p1, "video/avc"

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3b

    or-int/lit8 v0, v0, 0x4

    :cond_3b
    if-nez p6, :cond_43

    .line 310
    sget-object p5, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->UNSUPPORTED:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/4 p0, 0x1

    :goto_40
    move v3, p0

    move-object v4, p5

    goto :goto_45

    :cond_43
    const/4 p0, 0x0

    goto :goto_40

    .line 313
    :goto_45
    new-instance v1, Lio/bidmachine/media3/extractor/ts/TsExtractor;

    new-instance v6, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v6, v0, p3}, Lio/bidmachine/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const v7, 0x1b8a0

    const/4 v2, 0x2

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/extractor/ts/TsExtractor;-><init>(IILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-object v1
.end method

.method public static isFmp4Variant(Lio/bidmachine/media3/common/Format;)Z
    .registers 5

    .line 351
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    move v1, v0

    .line 355
    :goto_7
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 356
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v2

    .line 357
    instance-of v3, v2, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;

    if-eqz v3, :cond_20

    .line 358
    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;

    iget-object p0, v2, Lio/bidmachine/media3/exoplayer/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return v0
.end method

.method public static sniffQuietly(Lio/bidmachine/media3/extractor/Extractor;Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    :try_start_0
    invoke-interface {p0, p1}, Lio/bidmachine/media3/extractor/Extractor;->sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_d
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 372
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return p0

    :catchall_8
    move-exception p0

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 373
    throw p0

    .line 372
    :catch_d
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createExtractor(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/bidmachine/media3/extractor/ExtractorInput;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    .line 120
    invoke-static/range {p5 .. p5}, Lio/bidmachine/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result v1

    .line 121
    invoke-static {p1}, Lio/bidmachine/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v4, v3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    invoke-static {v0, v2}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 127
    invoke-static {v1, v2}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 128
    invoke-static {p1, v2}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 129
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_22
    if-ge v6, v4, :cond_2c

    aget v7, v3, v6

    .line 130
    invoke-static {v7, v2}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 135
    :cond_2c
    invoke-interface/range {p6 .. p6}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v3, 0x0

    .line 136
    :goto_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_6f

    .line 137
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v9, p4

    .line 140
    invoke-virtual {p0, v4, p2, p3, v9}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createExtractorByFileType(ILio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;)Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v7

    .line 139
    invoke-static {v7}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/extractor/Extractor;

    move-object/from16 v8, p6

    .line 141
    invoke-static {v7, v8}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lio/bidmachine/media3/extractor/Extractor;Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 142
    new-instance v6, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v11, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Lio/bidmachine/media3/extractor/Extractor;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-object v6

    :cond_5f
    if-nez v3, :cond_6c

    if-eq v4, v0, :cond_6b

    if-eq v4, v1, :cond_6b

    if-eq v4, p1, :cond_6b

    const/16 v9, 0xb

    if-ne v4, v9, :cond_6c

    :cond_6b
    move-object v3, v7

    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 160
    :cond_6f
    new-instance v6, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    .line 161
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lio/bidmachine/media3/extractor/Extractor;

    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v11, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    move-object v8, p2

    move-object/from16 v9, p4

    invoke-direct/range {v6 .. v11}, Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;-><init>(Lio/bidmachine/media3/extractor/Extractor;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-object v6
.end method

.method public bridge synthetic createExtractor(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createExtractor(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    return-object p1
.end method

.method public final createExtractorByFileType(ILio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;)Lio/bidmachine/media3/extractor/Extractor;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            ")",
            "Lio/bidmachine/media3/extractor/Extractor;"
        }
    .end annotation

    if-eqz p1, :cond_58

    const/4 v0, 0x1

    if-eq p1, v0, :cond_52

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4c

    const/4 v0, 0x7

    if-eq p1, v0, :cond_43

    const/16 v0, 0x8

    if-eq p1, v0, :cond_35

    const/16 v0, 0xb

    if-eq p1, v0, :cond_25

    const/16 p3, 0xd

    if-eq p1, p3, :cond_19

    const/4 p1, 0x0

    return-object p1

    .line 236
    :cond_19
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;

    iget-object p2, p2, Lio/bidmachine/media3/common/Format;->language:Ljava/lang/String;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    invoke-direct {p1, p2, p4, p3, v0}, Lio/bidmachine/media3/exoplayer/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)V

    return-object p1

    .line 258
    :cond_25
    iget v1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;Z)Lio/bidmachine/media3/extractor/ts/TsExtractor;

    move-result-object p1

    return-object p1

    :cond_35
    move-object v3, p2

    move-object v4, p3

    move-object v2, p4

    .line 250
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    iget v5, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->codecsToParseWithinGopSampleDependencies:I

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;ZLio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/common/Format;Ljava/util/List;I)Lio/bidmachine/media3/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p1

    return-object p1

    .line 248
    :cond_43
    new-instance p1, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p1

    .line 242
    :cond_4c
    new-instance p1, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/AdtsExtractor;-><init>()V

    return-object p1

    .line 246
    :cond_52
    new-instance p1, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/Ac4Extractor;-><init>()V

    return-object p1

    .line 244
    :cond_58
    new-instance p1, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/Ac3Extractor;-><init>()V

    return-object p1
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .registers 2

    .line 180
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .registers 2

    .line 188
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->codecsToParseWithinGopSampleDependencies:I

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method

.method public getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 6

    .line 203
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->supportsFormat(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 205
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-media3-cues"

    .line 206
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    .line 207
    invoke-interface {v1, p1}, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;->getCueReplacementBehavior(Lio/bidmachine/media3/common/Format;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setCueReplacementBehavior(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_42
    const-string p1, ""

    :goto_44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    .line 211
    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    :cond_5c
    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;
    .registers 2

    .line 172
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    move-result-object p1

    return-object p1
.end method
