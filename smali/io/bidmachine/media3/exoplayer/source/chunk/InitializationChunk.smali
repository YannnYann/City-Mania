###### Class io.bidmachine.media3.exoplayer.source.chunk.InitializationChunk (io.bidmachine.media3.exoplayer.source.chunk.InitializationChunk)
.class public final Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;
.super Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;
.source "InitializationChunk.java"


# instance fields
.field public final chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

.field public chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

.field public volatile loadCanceled:Z

.field public nextLoadPosition:J

.field public trackOutputProvider:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;)V
    .registers 18

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    .line 61
    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    move-object/from16 p1, p6

    .line 70
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 2

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->loadCanceled:Z

    return-void
.end method

.method public init(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->trackOutputProvider:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    return-void
.end method

.method public load()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 95
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->trackOutputProvider:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->init(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 100
    :cond_19
    :try_start_19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/datasource/DataSpec;->subrange(J)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v0

    .line 101
    new-instance v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    iget-wide v3, v0, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    .line 103
    invoke-virtual {v2, v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->open(Lio/bidmachine/media3/datasource/DataSpec;)J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;-><init>(Lio/bidmachine/media3/common/DataReader;JJ)V
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_56

    .line 106
    :goto_2e
    :try_start_2e
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->read(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3b

    if-eqz v0, :cond_3d

    goto :goto_2e

    :catchall_3b
    move-exception v0

    goto :goto_58

    .line 108
    :cond_3d
    :try_start_3d
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v2, v2, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J

    .line 109
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->getChunkIndex()Lio/bidmachine/media3/extractor/ChunkIndex;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_56

    .line 112
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v0}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    return-void

    :catchall_56
    move-exception v0

    goto :goto_6c

    .line 108
    :goto_58
    :try_start_58
    invoke-interface {v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v3, v3, Lio/bidmachine/media3/datasource/DataSpec;->position:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->nextLoadPosition:J

    .line 109
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->getChunkIndex()Lio/bidmachine/media3/extractor/ChunkIndex;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;->chunkIndex:Lio/bidmachine/media3/extractor/ChunkIndex;

    .line 110
    throw v0
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_56

    .line 112
    :goto_6c
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v1}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 113
    throw v0
.end method
