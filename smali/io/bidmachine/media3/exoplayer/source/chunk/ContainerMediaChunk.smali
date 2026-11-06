###### Class io.bidmachine.media3.exoplayer.source.chunk.ContainerMediaChunk (io.bidmachine.media3.exoplayer.source.chunk.ContainerMediaChunk)
.class public Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;
.super Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# instance fields
.field public final chunkCount:I

.field public final chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

.field public volatile loadCanceled:Z

.field public loadCompleted:Z

.field public nextLoadPosition:J

.field public final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJJJIJLio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;)V
    .registers 20

    .line 80
    invoke-direct/range {p0 .. p15}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 p1, p16

    .line 91
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkCount:I

    move-wide/from16 p1, p17

    .line 92
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    move-object/from16 p1, p19

    .line 93
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public getNextChunkIndex()J
    .registers 5

    .line 98
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    iget v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackOutputProvider(Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;
    .registers 2

    .line 0
    return-object p1
.end method

.method public isLoadCompleted()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getOutput()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    .line 117
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    .line 119
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 120
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 121
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->getTrackOutputProvider(Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v4

    .line 122
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->clippedStartTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-nez v7, :cond_24

    move-wide v1, v5

    goto :goto_27

    :cond_24
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v1, v7

    .line 123
    :goto_27
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->clippedEndTimeUs:J

    cmp-long v9, v7, v5

    if-nez v9, :cond_30

    :goto_2d
    move-wide v7, v5

    move-wide v5, v1

    goto :goto_35

    :cond_30
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long v5, v7, v5

    goto :goto_2d

    .line 120
    :goto_35
    invoke-interface/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->init(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 127
    :cond_38
    :try_start_38
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/datasource/DataSpec;->subrange(J)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v1

    .line 128
    new-instance v2, Lio/bidmachine/media3/extractor/DefaultExtractorInput;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    iget-wide v4, v1, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    .line 130
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/datasource/StatsDataSource;->open(Lio/bidmachine/media3/datasource/DataSpec;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;-><init>(Lio/bidmachine/media3/common/DataReader;JJ)V
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_79

    .line 133
    :goto_4d
    :try_start_4d
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_5c

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_4d

    :catchall_5a
    move-exception v0

    goto :goto_7b

    .line 134
    :cond_5c
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->maybeWriteEmptySamples(Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)V
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_5a

    .line 136
    :try_start_5f
    invoke-interface {v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v2, v2, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_79

    .line 139
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->onLoadEnded()V

    .line 140
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v0}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 142
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return-void

    :catchall_79
    move-exception v0

    goto :goto_87

    .line 136
    :goto_7b
    :try_start_7b
    invoke-interface {v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v3, v3, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    .line 137
    throw v0
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_79

    .line 139
    :goto_87
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;->onLoadEnded()V

    .line 140
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v1}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 141
    throw v0
.end method

.method public final maybeWriteEmptySamples(Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;)V
    .registers 14

    .line 174
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_49

    .line 177
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v1, v0, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_16

    iget v3, v0, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    if-le v3, v2, :cond_49

    :cond_16
    const/4 v3, -0x1

    if-eq v1, v3, :cond_49

    iget v0, v0, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    if-ne v0, v3, :cond_1e

    goto :goto_49

    :cond_1e
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, v1, v0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v3

    .line 184
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    iget v0, p1, Lio/bidmachine/media3/common/Format;->tileCountHorizontal:I

    iget p1, p1, Lio/bidmachine/media3/common/Format;->tileCountVertical:I

    mul-int/2addr v0, p1

    .line 185
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->endTimeUs:J

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    sub-long/2addr v4, v6

    int-to-long v6, v0

    div-long v10, v4, v6

    :goto_33
    if-ge v2, v0, :cond_49

    int-to-long v4, v2

    mul-long/2addr v4, v10

    .line 189
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    invoke-interface {v3, p1, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 190
    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_49
    :goto_49
    return-void
.end method

.method public onLoadEnded()V
    .registers 1

    .line 0
    return-void
.end method
