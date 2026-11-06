###### Class io.bidmachine.media3.exoplayer.source.chunk.SingleSampleMediaChunk (io.bidmachine.media3.exoplayer.source.chunk.SingleSampleMediaChunk)
.class public final Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;
.super Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public loadCompleted:Z

.field public nextLoadPosition:J

.field public final sampleFormat:Lio/bidmachine/media3/common/Format;

.field public final trackType:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJILio/bidmachine/media3/common/Format;)V
    .registers 30

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    .line 72
    invoke-direct/range {v0 .. v15}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    .line 83
    iput v1, v0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->trackType:I

    move-object/from16 v1, p13

    .line 84
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lio/bidmachine/media3/common/Format;

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 1

    .line 0
    return-void
.end method

.method public isLoadCompleted()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunk;->getOutput()Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 103
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 104
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->trackType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v3

    .line 105
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lio/bidmachine/media3/common/Format;

    invoke-interface {v3, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 108
    :try_start_15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v4, v5}, Lio/bidmachine/media3/datasource/DataSpec;->subrange(J)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/datasource/StatsDataSource;->open(Lio/bidmachine/media3/datasource/DataSpec;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2c

    .line 111
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    add-long/2addr v0, v4

    :cond_2c
    move-wide v8, v0

    goto :goto_30

    :catchall_2e
    move-exception v0

    goto :goto_5e

    .line 113
    :goto_30
    new-instance v4, Lio/bidmachine/media3/extractor/DefaultExtractorInput;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;-><init>(Lio/bidmachine/media3/common/DataReader;JJ)V

    :goto_39
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq v2, v0, :cond_4b

    .line 118
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    const v0, 0x7fffffff

    .line 119
    invoke-interface {v3, v4, v0, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result v2

    goto :goto_39

    .line 121
    :cond_4b
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->nextLoadPosition:J

    long-to-int v7, v4

    .line 122
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->startTimeUs:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_2e

    .line 124
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v0}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 126
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return-void

    .line 124
    :goto_5e
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->dataSource:Lio/bidmachine/media3/datasource/StatsDataSource;

    invoke-static {v1}, Lio/bidmachine/media3/datasource/DataSourceUtil;->closeQuietly(Lio/bidmachine/media3/datasource/DataSource;)V

    .line 125
    throw v0
.end method
