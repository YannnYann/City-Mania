###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaChunk (io.bidmachine.media3.exoplayer.hls.HlsMediaChunk)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;
.super Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# static fields
.field public static final uidSource:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final discontinuitySequenceNumber:I

.field public final drmInitData:Lio/bidmachine/media3/common/DrmInitData;

.field public extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

.field public final extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

.field public extractorInvalidated:Z

.field public final hasGapTag:Z

.field public final id3Decoder:Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;

.field public initDataLoadRequired:Z

.field public final initDataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final initDataSpec:Lio/bidmachine/media3/datasource/DataSpec;

.field public final initSegmentEncrypted:Z

.field public final isPrimaryTimestampSource:Z

.field public isPublished:Z

.field public volatile loadCanceled:Z

.field public loadCompleted:Z

.field public final mediaSegmentEncrypted:Z

.field public final muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public nextLoadPosition:I

.field public output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final partIndex:I

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public final playlistUrl:Landroid/net/Uri;

.field public final previousExtractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

.field public sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final shouldSpliceIn:Z

.field public final timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

.field public final timestampAdjusterInitializationTimeoutMs:J

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ZLio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLio/bidmachine/media3/common/util/TimestampAdjuster;JLio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;Lio/bidmachine/media3/common/util/ParsableByteArray;ZLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;",
            "Lio/bidmachine/media3/datasource/DataSource;",
            "Lio/bidmachine/media3/datasource/DataSpec;",
            "Lio/bidmachine/media3/common/Format;",
            "Z",
            "Lio/bidmachine/media3/datasource/DataSource;",
            "Lio/bidmachine/media3/datasource/DataSpec;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZIZZ",
            "Lio/bidmachine/media3/common/util/TimestampAdjuster;",
            "J",
            "Lio/bidmachine/media3/common/DrmInitData;",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;",
            "Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;",
            "Lio/bidmachine/media3/common/util/ParsableByteArray;",
            "Z",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p7

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p11

    move-object/from16 v6, p12

    move-wide/from16 v7, p13

    move-wide/from16 v9, p15

    move-wide/from16 v11, p17

    .line 330
    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJ)V

    move/from16 p2, p5

    .line 339
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    move/from16 p2, p19

    .line 340
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->partIndex:I

    move/from16 p2, p20

    .line 341
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPublished:Z

    move/from16 p2, p21

    .line 342
    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    .line 343
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    move-object/from16 p2, p6

    .line 344
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSource:Lio/bidmachine/media3/datasource/DataSource;

    if-eqz v0, :cond_2f

    const/4 p2, 0x1

    goto :goto_30

    :cond_2f
    const/4 p2, 0x0

    .line 345
    :goto_30
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    move/from16 p2, p8

    .line 346
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    move-object/from16 p2, p9

    .line 347
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    move/from16 p2, p23

    .line 348
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPrimaryTimestampSource:Z

    move-object/from16 p2, p24

    .line 349
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    move-wide/from16 v2, p25

    .line 350
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjusterInitializationTimeoutMs:J

    move/from16 p2, p22

    .line 351
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->hasGapTag:Z

    .line 352
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    move-object/from16 p1, p10

    .line 353
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    move-object/from16 p1, p27

    .line 354
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    move-object/from16 p1, p28

    .line 355
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-object/from16 p1, p29

    .line 356
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->id3Decoder:Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;

    move-object/from16 p1, p30

    .line 357
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    move/from16 p1, p31

    .line 358
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn:Z

    move-object/from16 p1, p32

    .line 359
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 360
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    .line 361
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->uidSource:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->uid:I

    return-void
.end method

.method public static buildDataSource(Lio/bidmachine/media3/datasource/DataSource;[B[B)Lio/bidmachine/media3/datasource/DataSource;
    .registers 4

    if-eqz p1, :cond_b

    .line 655
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/hls/Aes128DataSource;-><init>(Lio/bidmachine/media3/datasource/DataSource;[B[B)V

    return-object v0

    :cond_b
    return-object p0
.end method

.method public static createInstance(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/common/Format;JLio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Landroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;JLio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;[B[BZLio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;
    .registers 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;",
            "Lio/bidmachine/media3/datasource/DataSource;",
            "Lio/bidmachine/media3/common/Format;",
            "J",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;",
            "Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;",
            "J",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;",
            "[B[BZ",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            "Lio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;",
            ")",
            "Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    .line 106
    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    .line 107
    new-instance v7, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {v7}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    iget-object v9, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    .line 109
    invoke-static {v8, v9}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v8, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    .line 110
    invoke-virtual {v7, v8, v9}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setPosition(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v8, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    .line 111
    invoke-virtual {v7, v8, v9}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setLength(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v7

    .line 112
    iget-boolean v8, v2, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    if-eqz v8, :cond_32

    const/16 v8, 0x8

    goto :goto_33

    :cond_32
    const/4 v8, 0x0

    :goto_33
    invoke-virtual {v7, v8}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v7

    .line 113
    invoke-virtual {v7}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v13

    if-eqz v4, :cond_3f

    const/4 v15, 0x1

    goto :goto_40

    :cond_3f
    const/4 v15, 0x0

    :goto_40
    if-eqz v15, :cond_4f

    .line 123
    iget-object v10, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    invoke-static {v10}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_50

    :cond_4f
    const/4 v10, 0x0

    .line 125
    :goto_50
    invoke-static {v0, v4, v10}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->buildDataSource(Lio/bidmachine/media3/datasource/DataSource;[B[B)Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v12

    .line 128
    iget-object v4, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v4, :cond_97

    if-eqz v5, :cond_5c

    const/4 v10, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v10, 0x0

    :goto_5d
    if-eqz v10, :cond_6c

    .line 137
    iget-object v11, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    invoke-static {v11}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->getEncryptionIvArray(Ljava/lang/String;)[B

    move-result-object v11

    goto :goto_6d

    :cond_6c
    const/4 v11, 0x0

    .line 139
    :goto_6d
    iget-object v14, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->baseUri:Ljava/lang/String;

    const/16 p20, 0x1

    iget-object v7, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->url:Ljava/lang/String;

    invoke-static {v14, v7}, Lio/bidmachine/media3/common/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 140
    new-instance v14, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {v14}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 142
    invoke-virtual {v14, v7}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v8, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    .line 143
    invoke-virtual {v7, v8, v9}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setPosition(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v7

    iget-wide v8, v4, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    .line 144
    invoke-virtual {v7, v8, v9}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setLength(J)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v4

    .line 152
    invoke-static {v0, v5, v11}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->buildDataSource(Lio/bidmachine/media3/datasource/DataSource;[B[B)Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v0

    move/from16 v18, v10

    goto :goto_9d

    :cond_97
    const/16 p20, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    .line 155
    :goto_9d
    iget-wide v7, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long v23, p3, v7

    .line 156
    iget-wide v7, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long v25, v23, v7

    .line 157
    iget v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget v5, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    add-int/2addr v1, v5

    if-eqz v3, :cond_fd

    .line 165
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    if-eq v4, v5, :cond_cb

    if-eqz v4, :cond_c9

    if-eqz v5, :cond_c9

    iget-object v7, v4, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v5, v5, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    .line 169
    invoke-virtual {v7, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    iget-wide v7, v4, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v9, v5, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_c9

    goto :goto_cb

    :cond_c9
    const/4 v5, 0x0

    goto :goto_cd

    :cond_cb
    :goto_cb
    move/from16 v5, p20

    .line 171
    :goto_cd
    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    move-object/from16 v8, p7

    .line 172
    invoke-virtual {v8, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_de

    iget-boolean v7, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    if-eqz v7, :cond_de

    move/from16 v9, p20

    goto :goto_df

    :cond_de
    const/4 v9, 0x0

    .line 173
    :goto_df
    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->id3Decoder:Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;

    .line 174
    iget-object v10, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    if-eqz v5, :cond_f4

    if-eqz v9, :cond_f4

    .line 179
    iget-boolean v5, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractorInvalidated:Z

    if-nez v5, :cond_f4

    iget v5, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    if-ne v5, v1, :cond_f4

    .line 180
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-object/from16 v16, v3

    goto :goto_f6

    :cond_f4
    const/16 v16, 0x0

    :goto_f6
    move-object/from16 v38, v16

    :goto_f8
    move-object/from16 v39, v7

    move-object/from16 v40, v10

    goto :goto_10e

    :cond_fd
    move-object/from16 v8, p7

    .line 183
    new-instance v7, Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {v7}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;-><init>()V

    .line 184
    new-instance v10, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v3, 0xa

    invoke-direct {v10, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    const/16 v38, 0x0

    goto :goto_f8

    .line 186
    :goto_10e
    new-instance v10, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;

    move-object/from16 v17, v4

    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->mediaSequence:J

    iget v5, v2, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->isPreload:Z

    xor-int/lit8 v30, v2, 0x1

    iget-boolean v2, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->hasGapTag:Z

    move-object/from16 v7, p12

    .line 207
    invoke-virtual {v7, v1}, Lio/bidmachine/media3/exoplayer/hls/TimestampAdjusterProvider;->getAdjuster(I)Lio/bidmachine/media3/common/util/TimestampAdjuster;

    move-result-object v34

    iget-object v6, v6, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    move-object/from16 v11, p0

    move-object/from16 v14, p2

    move-object/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    move/from16 v33, p11

    move-wide/from16 v35, p13

    move/from16 v41, p18

    move-object/from16 v42, p19

    move-object/from16 v16, v0

    move/from16 v31, v1

    move/from16 v32, v2

    move-wide/from16 v27, v3

    move/from16 v29, v5

    move-object/from16 v37, v6

    move-object/from16 v19, v8

    invoke-direct/range {v10 .. v42}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ZLio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLio/bidmachine/media3/common/util/TimestampAdjuster;JLio/bidmachine/media3/common/DrmInitData;Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;Lio/bidmachine/media3/common/util/ParsableByteArray;ZLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    return-object v10
.end method

.method public static getEncryptionIvArray(Ljava/lang/String;)[B
    .registers 5

    .line 626
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    .line 627
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 632
    :cond_11
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 633
    new-array v0, v1, [B

    .line 634
    array-length v2, p0

    if-le v2, v1, :cond_24

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 635
    :goto_25
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static isIndependent(Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Z
    .registers 4

    .line 663
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v1, :cond_19

    .line 664
    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-nez v0, :cond_17

    iget p0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->partIndex:I

    if-nez p0, :cond_15

    iget-boolean p0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0

    .line 667
    :cond_19
    iget-boolean p0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    return p0
.end method

.method public static shouldSpliceIn(Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;J)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 239
    :cond_4
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->playlistUrl:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    if-eqz p1, :cond_11

    return v0

    .line 246
    :cond_11
    iget-object p1, p3, Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->segmentBase:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    add-long/2addr p4, v1

    .line 248
    invoke-static {p3, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isIndependent(Lio/bidmachine/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-wide p0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    cmp-long p0, p4, p0

    if-gez p0, :cond_23

    goto :goto_24

    :cond_23
    return v0

    :cond_24
    :goto_24
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public final feedDataToExtractor(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    .line 488
    iget p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    :cond_8
    move-object p3, p2

    goto :goto_11

    .line 490
    :cond_a
    iget p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lio/bidmachine/media3/datasource/DataSpec;->subrange(J)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object p3

    .line 495
    :goto_11
    :try_start_11
    invoke-virtual {p0, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->prepareExtraction(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Z)Lio/bidmachine/media3/extractor/DefaultExtractorInput;

    move-result-object p3

    if-eqz v0, :cond_1f

    .line 497
    iget p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    invoke-interface {p3, p4}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1d

    goto :goto_1f

    :catchall_1d
    move-exception p2

    goto :goto_5f

    .line 500
    :cond_1f
    :goto_1f
    :try_start_1f
    iget-boolean p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez p4, :cond_30

    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {p4, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p4
    :try_end_29
    .catch Ljava/io/EOFException; {:try_start_1f .. :try_end_29} :catch_2e
    .catchall {:try_start_1f .. :try_end_29} :catchall_2c

    if-eqz p4, :cond_30

    goto :goto_1f

    :catchall_2c
    move-exception p4

    goto :goto_54

    :catch_2e
    move-exception p4

    goto :goto_3b

    .line 510
    :cond_30
    :try_start_30
    invoke-interface {p3}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p3

    iget-wide v0, p2, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    :goto_36
    sub-long/2addr p3, v0

    long-to-int p2, p3

    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_1d

    goto :goto_4f

    .line 502
    :goto_3b
    :try_start_3b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->roleFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_53

    .line 505
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {p4}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;->onTruncatedSegmentParsed()V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_2c

    .line 510
    :try_start_48
    invoke-interface {p3}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p3

    iget-wide v0, p2, Lio/bidmachine/media3/datasource/DataSpec;->position:J
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_1d

    goto :goto_36

    .line 513
    :goto_4f
    invoke-static {p1}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    return-void

    .line 507
    :cond_53
    :try_start_53
    throw p4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_2c

    .line 510
    :goto_54
    :try_start_54
    invoke-interface {p3}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide p2, p2, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 511
    throw p4
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_1d

    .line 513
    :goto_5f
    invoke-static {p1}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 514
    throw p2
.end method

.method public getFirstSampleIndex(I)I
    .registers 3

    .line 385
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->shouldSpliceIn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 386
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 390
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public init(Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    .line 373
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->sampleQueueFirstSampleIndices:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public invalidateExtractor()V
    .registers 2

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractorInvalidated:Z

    return-void
.end method

.method public isLoadCompleted()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public isPublished()Z
    .registers 2

    .line 432
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPublished:Z

    return v0
.end method

.method public load()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;->isReusable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 415
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    .line 418
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->maybeLoadInitData()V

    .line 419
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_2e

    .line 420
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->hasGapTag:Z

    if-nez v0, :cond_28

    .line 421
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadMedia()V

    .line 423
    :cond_28
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->loadCompleted:Z

    :cond_2e
    return-void
.end method

.method public final loadMedia()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->mediaSegmentEncrypted:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->feedDataToExtractor(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ZZ)V

    return-void
.end method

.method public final maybeLoadInitData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    if-nez v0, :cond_5

    return-void

    .line 451
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSource:Lio/bidmachine/media3/datasource/DataSource;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initSegmentEncrypted:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->feedDataToExtractor(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ZZ)V

    .line 458
    iput v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->nextLoadPosition:I

    .line 459
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->initDataLoadRequired:Z

    return-void
.end method

.method public final peekId3PrivTimestamp(Lio/bidmachine/media3/extractor/ExtractorInput;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 580
    :try_start_8
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 581
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_19} :catch_a9

    .line 586
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    const v5, 0x494433

    if-eq v2, v5, :cond_25

    return-wide v0

    .line 590
    :cond_25
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 591
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    .line 593
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->capacity()I

    move-result v6

    if-le v5, v6, :cond_4f

    .line 594
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    .line 595
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v7, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 596
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v6, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    :cond_4f
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {p1, v5, v3, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 599
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->id3Decoder:Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lio/bidmachine/media3/extractor/metadata/id3/Id3Decoder;->decode([BI)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    if-nez p1, :cond_67

    return-wide v0

    .line 603
    :cond_67
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Metadata;->length()I

    move-result v2

    move v3, v4

    :goto_6c
    if-ge v3, v2, :cond_a9

    .line 605
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Metadata;->get(I)Lio/bidmachine/media3/common/Metadata$Entry;

    move-result-object v5

    .line 606
    instance-of v6, v5, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;

    if-eqz v6, :cond_a6

    .line 607
    check-cast v5, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;

    .line 608
    iget-object v6, v5, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 609
    iget-object p1, v5, Lio/bidmachine/media3/extractor/metadata/id3/PrivFrame;->privateData:[B

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 610
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x8

    .line 609
    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 612
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 615
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->scratchId3Data:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :catch_a9
    :cond_a9
    return-wide v0
.end method

.method public final prepareExtraction(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Z)Lio/bidmachine/media3/extractor/DefaultExtractorInput;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-interface {p1, p2}, Lio/bidmachine/media3/datasource/DataSource;->open(Lio/bidmachine/media3/datasource/DataSpec;)J

    move-result-wide v4

    if-eqz p3, :cond_20

    .line 525
    :try_start_6
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    iget-boolean v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPrimaryTimestampSource:Z

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    iget-wide v10, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjusterInitializationTimeoutMs:J

    invoke-virtual/range {v6 .. v11}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->sharedInitializeOrWait(ZJJ)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_11} :catch_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_20

    :catch_12
    move-exception v0

    move-object p1, v0

    .line 530
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 528
    :catch_1a
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 533
    :cond_20
    :goto_20
    new-instance v0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;

    iget-wide v2, p2, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;-><init>(Lio/bidmachine/media3/common/DataReader;JJ)V

    .line 536
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-nez p1, :cond_86

    .line 537
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->peekId3PrivTimestamp(Lio/bidmachine/media3/extractor/ExtractorInput;)J

    move-result-wide v8

    .line 538
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->resetPeekPosition()V

    .line 541
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->previousExtractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-eqz p1, :cond_3c

    .line 542
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;->recreate()Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-result-object p1

    goto :goto_53

    :cond_3c
    move-object v6, v0

    .line 543
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object p1, p2, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->muxedCaptionFormats:Ljava/util/List;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 548
    invoke-interface {v1}, Lio/bidmachine/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-object v1, p1

    .line 543
    invoke-interface/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;->createExtractor(Landroid/net/Uri;Lio/bidmachine/media3/common/Format;Ljava/util/List;Lio/bidmachine/media3/common/util/TimestampAdjuster;Ljava/util/Map;Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-result-object p1

    move-object v0, v6

    :goto_53
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    .line 551
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;->isPackedAudioExtractor()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 552
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v8, p2

    if-eqz p2, :cond_6d

    .line 554
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {p2, v8, v9}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide p2

    goto :goto_6f

    .line 555
    :cond_6d
    iget-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    .line 552
    :goto_6f
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    goto :goto_7a

    .line 559
    :cond_73
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setSampleOffsetUs(J)V

    .line 561
    :goto_7a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->onNewExtractor()V

    .line 562
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->extractor:Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunkExtractor;->init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V

    .line 564
    :cond_86
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->output:Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/hls/HlsSampleStreamWrapper;->setDrmInitData(Lio/bidmachine/media3/common/DrmInitData;)V

    return-object v0
.end method

.method public publish()V
    .registers 2

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaChunk;->isPublished:Z

    return-void
.end method
