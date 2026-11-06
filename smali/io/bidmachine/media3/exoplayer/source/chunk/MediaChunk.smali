###### Class io.bidmachine.media3.exoplayer.source.chunk.MediaChunk (io.bidmachine.media3.exoplayer.source.chunk.MediaChunk)
.class public abstract Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;
.super Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;
.source "MediaChunk.java"


# instance fields
.field public final chunkIndex:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJ)V
    .registers 23

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 52
    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 61
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 p1, p10

    .line 62
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    return-void
.end method


# virtual methods
.method public getNextChunkIndex()J
    .registers 6

    .line 67
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->chunkIndex:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    :cond_c
    return-wide v2
.end method

.method public abstract isLoadCompleted()Z
.end method
